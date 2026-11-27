"""Discovery of exact nonnegative linear certificates for two saturated endpoint patterns.
Only the integer certificate checker, not a floating solver status, accepts exclusion.
"""
import json,sys,itertools
from pathlib import Path
from saturation import primes,val
from saturation_strong import check

def constraints(n,p,D,E):
 k=n//p;V=[v for v in range(2,n+1) if v%p];m=len(V);ix={v:i for i,v in enumerate(V)};Q=[q for q in primes(n) if q!=p];rows=[];bounds=[]
 def add(co,b):rows.append((tuple(sorted((i,c) for i,c in co.items() if c)),b))
 for side,S in enumerate((set(D),set(E))):
  a=side*m
  for v in V:bounds.append((2,2) if v in S else (0,1))
  # Fixed double d. If a distinct chosen w is multiplied by d into a free
  # product chain, a drop of 1 or 2 in the minimum exponent is prohibited.
  for d in S:
   for w in V:
    z=d*w
    if z>n:break
    j=a+ix[z]
    if w in S:
     req=2 if w!=d and z<=k else 1
     add({j:-1},-req)
    else:add({a+ix[w]:1,j:-1},0)
   for u in range(2,d):
    if d%u==0 and u<d//u:
     # if both proper distinct factors empty, split d into them and drop A by one
     add({a+ix[u]:-1,a+ix[d//u]:-1},-1)
 for q in Q:
  co={a+i:val(v,q) for a in (0,m) for i,v in enumerate(V) if val(v,q)}
  b=sum(val(v,q)*(2 if v<=k else 1) for v in V)
  add(co,b);add({i:-c for i,c in co.items()},-b)
 return bounds,rows

def verify(c):
 bounds,rows=constraints(c['n'],c['p'],c['D'],c['E']);r=[0]*len(bounds);up=0
 for i,w in c['weights']:
  assert 0<=i<len(rows) and isinstance(w,int) and w>=0
  co,b=rows[i];up+=w*b
  for j,a in co:r[j]+=w*a
 lo=sum(a*(l if a>=0 else h) for a,(l,h) in zip(r,bounds))
 assert lo>up and (lo,up)==tuple(c['gap'])
 return lo-up

def discover(n,p,D,E):
 import numpy as np
 from scipy.sparse import lil_matrix, hstack
 from scipy.optimize import linprog
 bounds,rows=constraints(n,p,D,E);m=len(bounds);A=lil_matrix((len(rows),m+1));b=[]
 for i,(co,bi) in enumerate(rows):
  for j,a in co:A[i,j]=a
  A[i,m]=-1;b.append(bi)
 obj=np.zeros(m+1);obj[-1]=1
 res=linprog(obj,A_ub=A.tocsr(),b_ub=b,bounds=bounds+[(0,None)],method='highs')
 if not res.success or res.fun<1e-8:return None
 y=np.maximum(0,-res.ineqlin.marginals)
 for scale in (10**5,10**8,10**12):
  weights=[(i,int(round(w*scale))) for i,w in enumerate(y) if round(w*scale)>0];r=[0]*m;up=0
  for i,w in weights:
   co,bi=rows[i];up+=w*bi
   for j,a in co:r[j]+=w*a
  lo=sum(a*(l if a>=0 else h) for a,(l,h) in zip(r,bounds))
  if lo>up:
   c=dict(n=n,p=p,D=D,E=E,weights=weights,gap=[lo,up]);verify(c);return c
 return None

def residual(n,p):
 # independently enumerate all masks and fixed-point lower bounds, including closure
 k=n//p;B=list(range(2,k+1));Q=[q for q in primes(n) if q!=p];U=tuple(sum(val(x,q) for x in range(2,n+1)) for q in Q);patterns=[]
 for mask in range(1<<len(B)):
  D={d for i,d in enumerate(B) if mask>>i&1};F={d:2 for d in D}
  while True:
   G=F.copy()
   for w in F:
    for d in D:
     z=w*d
     if z<=n:G[z]=max(G.get(z,0),2 if z<=k and w!=d and w in D else 1)
   if G==F:break
   F=G
  if any(c==2 and v not in D for v,c in F.items()):continue
  counts=tuple(sum(c*val(v,q) for v,c in F.items()) for q in Q);patterns.append((tuple(sorted(D)),counts))
 for D,x in patterns:
  for E,y in patterns:
   if len(D)+len(E)>=k+2 and all(a+b<=c for a,b,c in zip(x,y,U)):yield D,E
if __name__=='__main__':
 if sys.argv[1]=='verify':
  cs=json.loads(Path(sys.argv[2]).read_text());print('EXACT certificates',len(cs),'all positive',all(verify(c)>0 for c in cs));sys.exit()
 n,p=map(int,sys.argv[1:3]);cs=[];bad=[];P=list(residual(n,p))
 for D,E in P:
  c=discover(n,p,D,E)
  if c:cs.append(c)
  else:bad.append((D,E))
  print(n,p,D,E,'EXACT_UNSAT' if c else 'UNRESOLVED',flush=True)
 Path(f'sat_lp_{n}_{p}.json').write_text(json.dumps(cs));print('SUMMARY',n,p,'residual',len(P),'exact',len(cs),'unresolved',len(bad),flush=True)

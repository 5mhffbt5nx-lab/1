from math import isqrt
from itertools import combinations
import json,sys

def primes(n):return [i for i in range(2,n+1) if all(i%d for d in range(2,isqrt(i)+1))]
def val(x,p):
 e=0
 while x%p==0:x//=p;e+=1
 return e

def check(n,p):
 assert p*p>n and p<=n
 k=n//p;B=list(range(2,k+1));Q=[q for q in primes(n) if q!=p];U=tuple(sum(val(x,q) for x in range(2,n+1)) for q in Q)
 # counts for forced selection: two copies of d in D, one for w>k
 patterns=[]
 for m in range(1<<len(B)):
  D={d for i,d in enumerate(B) if m>>i&1};F=set(D);stack=list(D)
  while stack:
   w=stack.pop()
   for d in D:
    z=w*d
    if k<z<=n and z not in F:
     assert z%p!=0;F.add(z);stack.append(z)
  counts=tuple(sum((2 if x in D else 1)*val(x,q) for x in F) for q in Q)
  patterns.append((tuple(sorted(D)),tuple(sorted(F)),counts))
 total=0;fail=[];examples=[]
 for d,fd,x in patterns:
  for e,fe,y in patterns:
   if len(d)+len(e)<k+2:continue
   total+=1
   bad=[q for q,a,b,c in zip(Q,x,y,U) if a+b>c]
   if not bad:fail.append((d,e))
   else:examples.append((d,e,bad[0]))
 return dict(n=n,p=p,k=k,pairs=total,unresolved=len(fail),first_unresolved=fail[:5],examples=examples)
if __name__=='__main__':
 results=[]
 for n in map(int,sys.argv[1:]):
  for p in primes(n):
   if p*p<=n or n//p<4:continue
   r=check(n,p);results.append(r);print({k:v for k,v in r.items() if k!='examples'},flush=True)
 with open('saturation_results.json','w') as f:json.dump(results,f)

"""Independent tuple-based coverage and small-instance audits; no floating arithmetic."""
from itertools import combinations,product
from collections import Counter
from math import isqrt,prod
from functools import lru_cache
from pathlib import Path
import random,re,subprocess,json
from sat_lp import residual,verify
ROOT=Path(__file__).resolve().parent

def primes(n):return [x for x in range(2,n+1) if all(x%d for d in range(2,isqrt(x)+1))]
def val(x,p):
 r=0
 while x%p==0:x//=p;r+=1
 return r

def add(a,b):return tuple(x+y for x,y in zip(a,b))
def normalize(F):
 mins=tuple(map(min,zip(*F)));return frozenset(tuple(x-y for x,y in zip(v,mins)) for v in F)
def reflect(F):
 mx=tuple(map(max,zip(*F)));return frozenset(tuple(x-y for x,y in zip(mx,v)) for v in F)
def plus(A,B):return frozenset(add(a,b) for a in A for b in B)
@lru_cache(None)
def shapes(k,Q):
 return frozenset(normalize({tuple(sum(val(j,p) for j in I) for p in Q) for I in combinations(range(1,k+1),b)}) for b in range(k+1))
@lru_cache(None)
def family(k,m,Q):
 F={frozenset({(0,)*len(Q)})}
 for _ in range(m):F={plus(a,b) for a in F for b in shapes(k,Q)}
 return frozenset(F)
def count(n,k0=0):
 Q=tuple(p for p in primes(n) if p*p<=n);cnt=Counter(n//p for p in primes(n) if p*p>n and n//p>1)
 changed=next((n//p for p in primes(n) if p*p>n and n%p==0),0)
 if k0:cnt[k0]-=1
 F=[]
 for k,m in cnt.items():
  if not m:continue
  f=set(family(k,m,Q))
  if k==changed and k0!=changed:
   old={plus(a,b) for a in family(k,m-1,Q) for b in shapes(k-1,Q)};f-=old
  assert {reflect(a) for a in f}==f
  F.append(f)
 return (prod(len(f) for f in F)+prod(sum(reflect(a)==a for a in f) for f in F))//2

def guard_test():
 rng=random.Random(605957);checks=0
 for _ in range(10000):
  width=rng.randint(2,50);nr=rng.randint(1,20);S=0;bad=False
  for j in range(nr):
   row=rng.randrange(1<<(width-1));S|=row<<(j*width)
   hits=[i for i in range(width-1) if row>>i&1]
   bad|=bool(hits and hits[-1]-hits[0]+1!=len(hits))
  low=sum(1<<(j*width) for j in range(nr));guard=low<<(width-1);A=S&~(S<<1)
  assert bool(A&((A|guard)-low))==bad;checks+=1
 print('Packed guard independent random exact tests:',checks)

def merge_test():
 # Complete local count combinations, including identical factors; actual core
 # is kept exactly, and a missing b-1 is bridged by the new interval.
 cases=0
 for n in range(12,131):
  for p in primes(n):
   if p*p<=n:continue
   k=n//p
   for d in range(2,k+1):
    for w in range(2,n//d+1):
     if w%p:pass
     else:continue
     z=d*w;Cw=2 if w<=k else 1;Cz=2 if z<=k else 1
     for cw in range(1,Cw+1):
      for cz in range(Cz):
       if w==d and cw!=2:continue
       if not (cz==0 or z>k or (w!=d and cw==2)):continue
       old={d:2,w:cw,z:cz};old[d]=2;new=old.copy();new[d]-=1;new[w]-=1;new[z]+=1
       assert all(0<=v<=(2 if a<=k else 1) for a,v in new.items())
       assert prod(a**v for a,v in old.items())==prod(a**v for a,v in new.items())
       A=lambda c:sum(v==2 for v in c.values())
       assert 1<=A(old)-A(new)<=2;cases+=1
 print('Saturation local merge exact tests:',cases)

def cover(n):
 ps=primes(n);small=[p for p in ps if p*p<=n];large=[p for p in ps if p*p>n];done=set();missing=[]
 N=count(n)
 for p in small:
  f=ROOT/f'{n}_p{p}.log';s=f.read_text() if f.exists() else ''
  if f'PASS_PART n={n} only=0 small_checks={N} large_checks=0' in s:
   assert 'HOLE' not in s;done.add(p)
 print(n,'small expected per axis',N,'covered',[p for p in small if p in done])
 for p in large:
  k=n//p
  if k<=3:done.add(p);continue
  P=list(residual(n,p))
  if not P:done.add(p);print(n,p,'saturation exact all patterns excluded');continue
  f=ROOT/f'sat_lp_{n}_{p}.json'
  if f.exists():
   cs=json.loads(f.read_text());assert all(verify(c)>0 for c in cs)
   covered={(tuple(c['D']),tuple(c['E'])) for c in cs};assert covered<=set(P)
   if covered==set(P):done.add(p);print(n,p,'exact integer certificates',len(cs));continue
  expected=count(n,k)
  logs=[ROOT/f'{n}_k{k}_retry.log',ROOT/f'{n}_k{k}.log']
  if any(f.exists() and f'PASS_PART n={n} only={k} small_checks=0 large_checks={expected}' in f.read_text() for f in logs):done.add(p);print(n,p,'direct',expected)
  else:print(n,p,'unresolved residual',len(P))
 missing=sorted(set(ps)-done)
 print('COVERAGE',n,'total',len(ps),'covered',len(done),'missing',missing)
 return not missing
if __name__=='__main__':
 guard_test();merge_test();a=cover(102);b=cover(104);assert a;assert 103 in primes(103);print('CONTIGUOUS conditional on earlier n<=101:',104 if b else 103)

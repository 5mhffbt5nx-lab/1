from saturation import primes,val
from itertools import product
import json,sys

def check(n,p):
 assert p*p>n and p<=n
 k=n//p;B=list(range(2,k+1));Q=[q for q in primes(n) if q!=p];U=tuple(sum(val(x,q) for x in range(2,n+1)) for q in Q)
 patterns=[];invalid=0
 for mask in range(1<<len(B)):
  D={d for i,d in enumerate(B) if mask>>i&1};F={d:2 for d in D};stack=list(D);ok=True
  # closure: merge removes a full double chain; two distinct full chains reduce A by 2
  while stack and ok:
   w=stack.pop()
   for d in D:
    z=w*d
    if z>n:continue
    count=2 if z<=k and w!=d and w in D else 1
    if count==2 and z not in D:ok=False;break
    if F.get(z,0)<count:F[z]=count;stack.append(z)
  if not ok:invalid+=1;continue
  counts=tuple(sum(c*val(x,q) for x,c in F.items()) for q in Q)
  patterns.append((tuple(sorted(D)),counts))
 total=0;fail=[];resource=0
 for d,x in patterns:
  for e,y in patterns:
   if len(d)+len(e)<k+2:continue
   total+=1
   if all(a+b<=c for a,b,c in zip(x,y,U)):fail.append((d,e))
   else:resource+=1
 return dict(n=n,p=p,k=k,invalid_patterns=invalid,pairs=total,resource=resource,unresolved=len(fail),first_unresolved=fail[:5])
if __name__=='__main__':
 results=[]
 for n in map(int,sys.argv[1:]):
  for p in primes(n):
   if p*p<=n or n//p<4:continue
   r=check(n,p);results.append(r);print(r,flush=True)
 with open('saturation_strong_results.json','w') as f:json.dump(results,f)

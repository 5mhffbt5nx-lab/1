"""Recheck existing R08 counterexample, no new parameter search. Standard library only."""
from collections import Counter
from math import prod,isqrt
from itertools import product
N,P=69819,59
Q=(2,3,5,7,11,13,17,19,23,29,31,37,41)
A=(551,713,814,861,1105)
B=(62951,65395,67146,69223,69290,69819)
W=((4,-1,2,1,-4,-3,1,-2,-1,2,1,0,0),(-1,-1,1,1,0,0,-1,1,0,-1,0,1,0),(-3,-1,-3,-1,3,2,1,2,0,-2,0,0,2))
assert len(set(Q+(P,)))==14
assert all(q>=2 and all(q%d for d in range(2,isqrt(q)+1)) for q in Q+(P,))
def factor(x):
    ans=[]
    for q in Q+(P,):
        e=0
        while x%q==0:x//=q;e+=1
        ans.append(e)
    return tuple(ans) if x==1 else None
Z=prod(Q)**2
assert prod(A)**2==prod(B)==Z
counts=Counter();pos=[0]*14;neutral=[]
for x in range(1,N+1):
    v=factor(x)
    if v is None:continue
    w=tuple(sum(a*b for a,b in zip(row,v)) for row in W)
    s=(w>(0,0,0))-(w<(0,0,0));counts[s]+=1
    if s>0:pos=[a+b for a,b in zip(pos,v)]
    elif s==0:neutral.append(x)
assert counts==Counter({1:5082,-1:1920,0:19})
assert set(neutral)=={1,P,P*P,*A,*(P*a for a in A),*B}
assert len(neutral)==19
# Exhaustive core chain-count choices; independently verify all integer solutions.
sol=[]
for c in product(*([range(3)]*5+[range(2)]*6)):
    if prod(v**k for v,k in zip(A+B,c))==Z:sol.append(c)
assert sol==[(0,)*5+(1,)*6,(2,)*5+(0,)*6]
# Independent product-divisor DP on physical factors, including both pure powers.
D={1:1}
for v in neutral:
    if v==1:continue
    e=0
    while v%P==0:v//=P;e+=1
    for x,mask in tuple(D.items()):
        z=x*v
        if Z%z==0:D[z]=D.get(z,0)|(mask<<e)
fiber=[e for e in range(D[Z].bit_length()) if D[Z]>>e&1]
assert fiber==[0,1,2,3,5,6,7,8]
assert tuple(x+2 for x in pos[:-1])+(pos[-1]+3,)==(12881,4380,3666,2480,917,923,1160,802,757,826,747,613,558,420)
print('n,p=',N,P,'positive/negative/neutral=',counts[1],counts[-1],counts[0])
print('neutral=',neutral,'count vectors=15552; exact solutions=',sol)
print('DP states=',len(D),'relative fiber=',fiber,'common p exponent=',pos[-1])
print('PASS: original global counterexample m=C*Z*p^3, m and p^2*m present, p*m absent. No Lean claim.')

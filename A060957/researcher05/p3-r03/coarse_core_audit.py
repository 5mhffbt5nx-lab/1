"""One existing counterexample, not a general D_q theorem or new counterexample."""
from collections import Counter
from math import prod
A=(551,713,814,861,1105)
B=(62951,65395,67146,69223,69290,69819)
Q=(2,3,5,7,11,13,17,19,23,29,31,37,41)
assert prod(A)**2==prod(B)==prod(Q)**2
D={}
for q in Q:
 c=Counter()
 for v,t in [(v,2) for v in A]+[(v,-1) for v in B]:
  while v%q==0:v//=q
  c[v]+=t
 D[q]=sum(abs(t) for t in c.values())
assert set(D.values())=={16}
print('n=69819 p=59; archived two modes; chain L1 distance=16; D_q=',D)
print('For primes outside Q and distinct from p, stripping q has no effect. All D_q=16. Pure buffer T=3, gap g=1. No asymptotic inference.')

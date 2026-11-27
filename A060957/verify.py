"""Exact, standard-library-only verification of two Ang counterexamples.
Run: python3 verify.py (do not use -O, since assertions are checks).
"""
from math import isqrt, prod
import sys

CASES = [
    (130203, 53, 92568222856376731590410384100,
     [2,3,5,7,11,13,17,19,23,29,31,37,41],
     [-1995998,-994998,-991997,-1000001,999,-2000,-4002,993999,1991998,-2,2000000,2000,2],
     [481,1054,627,805,1189],
     [59755,64493,130203,82708,35815,62279],
     [62974,78039],
     [188,425,327,173,368,253,184,410,588,154,561,161,138,106],
     (9940,1039,8880,21)),
    (954316, 101, 378089444731722233953867379643788100,
     [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47],
     [-3002000998999999,-1998999999999002,-2001998999000000,-1002000000998999,
      -1999999999998000,-2000000000999,-1999999998000000,2000000000000002,
      3001999998998999,2001999999998999,2002000000000000,-1001000000,
      2000002000000000,1001998998999999,-1000000001000],
     [2679,4147,2737,3526,5735],
     [753269,895869,700553,954316,878275,954193], [],
     [745,1305,716,900,493,933,380,1673,1968,1325,1266,485,967,721,393,264],
     (34565,3355,31191,19)),
]

def prime(q):
    return q >= 2 and all(q % d for d in range(2, isqrt(q)+1))


def factor(t, primes):
    exponents = []
    for q in primes:
        e = 0
        while t % q == 0:
            t //= q
            e += 1
        exponents.append(e)
    return t, exponents


def verify(case):
    n,p,z,qs,weights,A,B,extra,expected_m,counts = case
    primes = qs+[p]
    assert len(set(primes)) == len(primes) and all(map(prime,primes))
    assert p*p <= n < p**3 and prod(A)**2 == z == prod(B) == prod(qs)**2
    # Exhaustive integer scan, not a heuristic search for smooth numbers.
    plus, zero, neg = [], [], 0
    c_exp = [0]*len(primes)
    for t in range(1,n+1):
        rest, ex = factor(t,primes)
        if rest != 1:
            continue
        w = sum(a*b for a,b in zip(weights,ex))
        if w > 0:
            plus.append(t)
            c_exp = [a+b for a,b in zip(c_exp,ex)]
        elif w == 0:
            zero.append(t)
        else:
            neg += 1
    expected_zero = sorted([1,p,p*p]+A+[p*a for a in A]+B+extra)
    assert zero == expected_zero
    assert (len(plus)+neg+len(zero),len(plus),neg,len(zero)) == counts
    C = prod(plus)
    assert C == prod(q**e for q,e in zip(primes,c_exp))
    m = C*z*p**3
    assert m == prod(q**e for q,e in zip(primes,expected_m))
    low = B+[p,p*p]
    high = A+[p*a for a in A]
    for subset,k in ((low,3),(high,5)):
        assert len(subset) == len(set(subset)) and set(subset) <= set(zero)
        assert prod(subset) == z*p**k and not (set(subset)&set(plus))
        assert prod(plus+subset) == C*z*p**k
    # All nonnegative residual p-exponents are at most 8, by the full zero list.
    assert sum(factor(t,[p])[1][0] for t in zero) == 8
    # Exact dynamic program: retain only divisors of z*p**8.
    # Every partial product of a representation of z*p**e (e<=8) divides this target.
    target = z*p**8
    reachable = {1}
    for t in zero:
        if t != 1:
            reachable |= {r*t for r in reachable if target % (r*t) == 0}
    exponents = [e for e in range(9) if z*p**e in reachable]
    assert exponents == [0,1,2,3,5,6,7,8]
    print(f'n={n}, p={p}: D/positive/negative/zero = {counts}')
    print('  C exponent vector:', c_exp)
    print('  m exponent vector:', expected_m)
    print('  residual states:', len(reachable), 'fiber:', exponents)
    print('  PASS: m and p^2*m belong to P_n; p*m does not.')

if __name__ == '__main__':
    if not __debug__:
        sys.exit('Run without Python -O.')
    for case in CASES:
        verify(case)

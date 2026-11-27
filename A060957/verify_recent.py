from math import prod
from verify import verify

# Lexicographic weights encoded using base 1000. Each valuation coordinate sum
# is at most floor(log2(n)), so the low-order contributions cannot change sign.
def weights(rows):
    return [a*1000000+b*1000+c for a,b,c in zip(*rows)]

q0=[2,3,5,7,11,13,17,37,19,29,31,23,41]
q=[2,3,5,7,11,13,17,19,23,29,31,37,41]
CASES=[
(72335,43,prod(q0)**2,q0,weights([[-2,-1,-1,-1,0,0,0,1,2,0,2,0,0],[4,5,8,0,1,-2,-4,-6,-8,0,0,2,0],[2,2,3,-1,-1,0,-2,-1,-2,-2,0,0,2]]),[299,1054,1221,665,1189],[72335,64493,66861,68324,69745,62279],[20102,64467],[133,301,222,120,254,167,123,180,480,106,395,153,101,87],(7313,765,6527,21)),
(69819,59,prod(q)**2,q,weights([[4,-1,2,1,-4,-3,1,-2,-1,2,1,0,0],[-1,-1,1,1,0,0,-1,1,0,-1,0,1,0],[-3,-1,-3,-1,3,2,1,2,0,-2,0,0,2]]),[551,713,814,861,1105],[62951,65395,67146,69223,69290,69819],[],[12881,4380,3666,2480,917,923,1160,802,757,826,747,613,558,420],(7021,5082,1920,19))]
if __name__=='__main__':
    if not __debug__:
        raise SystemExit('Run without -O')
    for case in CASES:
        verify(case)

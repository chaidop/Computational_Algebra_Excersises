from sympy import S, degree
from sympy.polys.subresultants_qq_zz import *
x = S('x')
f = x**8 + x**6 - 3*x**4 - 3*x**3 + 8*x**2 + 2*x - 5
g = 3*x**6 + 5*x**4 - 4*x**2 - 9*x + 21
mss = modified_subresultants_amv(f, g, x)
print( mss)
print(sign_seq(mss, x))

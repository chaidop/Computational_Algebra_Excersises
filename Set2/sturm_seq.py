from sympy import S, degree
from sympy.polys.subresultants_qq_zz import *
x = S('x')
f = x**8 + x**6 - 3*x**4 - 3*x**3 + 8*x**2 + 2*x - 5
g = 3*x**6 + 5*x**4 - 4*x**2 - 9*x + 21
ss = sturm_q(f, g, x)
print(ss)
print(sign_seq(ss, x))

[print(degree(poly, x)) for poly in ss];
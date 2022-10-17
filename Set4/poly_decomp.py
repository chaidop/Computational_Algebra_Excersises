from sympy import *
from sympy.polys.monomials import *
from numpy import *
import itertools

def Polynomial_divisors(u, x):
    #gets the constant of the function u0
    u0 = Poly(u,x).nth(0)
    #finds all the irreducable factors of u-u0
    l = factor_list(u-u0)
    factors = []
    helper = l[1]
    for i in range(len(helper)):
        factors.append(helper[i][0])
        
    M = list(itermonomials(factors, 8))
    return M

def Polynomial_expansion(u, v, x, t):
    c =  Poly(u,x).nth(0)
    if degree(u) == -inf and c==0:
        return 0
    else:
        fr = div(u,v)
        #the quotient
        d = fr[0]
        #the remainder
        r = fr[1]
        return (t*Polynomial_expansion(d, v, x, t)+r)

def Free_of(u):
    return true if len(Poly(u).free_symbols)>0 else false



x = S('x')
t = S('t')
f = x**8 + 4*x**7 +10*x**6 + 16*x**5 + 29*x**4+ 36*x**3  + 40*x**2 + 24*x + 39
S = Polynomial_divisors(f, x)
i = 1
u0 = Poly(f,x).nth(0)
for i in range(len(S)):
    w = S[i]
    if degree(w)>1 and degree(f)>degree(w) and degree(f)%degree(w)==0:
        if rem(f-u0,w)==0:
            v = Polynomial_expansion(f, w, x, t)
            if(Free_of(v)):
               break
            
print("f(x) = ",f,"\n---------------------------------------")
v=expand(v.subs({t:x}))
print("v(x) = ",v)
w=expand(w)
print("w(x) = ",w)
print("\n\nDecomposition v(w(x)) gives: \n",expand(v.subs({x:w})))
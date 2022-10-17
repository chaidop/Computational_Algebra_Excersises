from sympy import S
import numpy as np
x = S('x')
f = x**3 - 1745
f10 = f.subs({x : 10 * x});
print( f10.as_poly().intervals() );
print(f10.expand())
f = f10
for i in range(1, 10):
    f = f.subs({x : x + 1}).expand()
    print(f)
    
f11 = f10.subs({x : x + 1}); print(f11.expand())
f = f11.subs({x : x/10})
for i in range(1, 10):
    f = f.subs({x : x + 1})
    print(i, ' substitutions::',f.expand())

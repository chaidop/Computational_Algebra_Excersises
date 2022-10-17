from sympy import S
x = S('x')
f = x**2 - 1745
f10 = f.subs({x : 10*x}).expand()
f = f10
for i in range(1, 10):
    f = f.subs({x : x + 1}).expand()
    print('i=', i,'\n', f.expand(), '\n')

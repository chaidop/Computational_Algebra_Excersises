from sympy import S
x = S('x')
f = x**3 - 1745
for i in range(1, 14):
    f = f.subs({x : x + 1})
    #meta apo ',i,' antikatastaseis ths morfhs x<-x+1 pairnoyme
    print('i=',i,'\n',f.expand(),'\n')
print( f.as_poly().intervals() );
from sympy import *
x = S('x')
f = x**3 - 30*x**2 + 293*x - 923
f6 = x**3 - 12*x**2 + 41*x - 29 
f11 = x**3 + 3*x**2 - 4*x + 1 
for i in range(1, 12):
    f = f.subs({x : x + 1})
    #meta apo ',i,' antikatastaseis ths morfhs x<-x+1 pairnoyme
    #print('i=',i,'\n',f.expand(),'\n')
#print( f.as_poly().intervals() );

########
######
#Moebius
######
########
#for f6:

M = x
f = (f6.subs({x : 1/x})*x**3 ).simplify()
M = 1/x
print(f)
print(f.as_poly().intervals())

f1 = (f.subs({x : x+1})).simplify()
M = M.subs({x : x+1})
print(f1)
print(f1.as_poly().intervals())

f2 = (f1.subs({x : 1/x})*x**3).simplify()
M = M.subs({x : 1/x})
print(f2)
print(f2.as_poly().intervals())

f3 = (f2.subs({x : x+19})).simplify()
M = M.subs({x : x+19})
print(f3)
print(f3.as_poly().intervals())

f4 = (f3.subs({x : 1/x})*x**3).simplify()
M = M.subs({x : 1/x})
print(f4)
print(f4.as_poly().intervals())

f5 = (f4.subs({x : x+2})).simplify()
M = M.subs({x : x+2})
print(f5)
print(f5.as_poly().intervals())
M.simplify()
print(M)


########
######
#Moebius
######
########
#for f11:
print('==================')
M = x
f = (f11.subs({x : 1/x})*x**3 ).simplify()
M = 1/x
print(f)
print(f.as_poly().intervals())
### diaxwrismos gia (2, 3)
#f1 = (f.subs({x : x+2})).simplify()
#M = M.subs({x: x+2})
#print(f1)
#print(f1.as_poly().intervals())

#f2 = (f1.subs({x : 1/x})*x**3).simplify()
#M = M.subs({x : 1/x})
#print(f2)
#print(f2.as_poly().intervals())

#f3 = (f2.subs({x : x+1})).simplify()
#M = M.subs({x: x+1})
#print(f3)
#print(f3.as_poly().intervals())

#f4 = (f3.subs({x : 1/x})*x**3).simplify()
#M = M.subs({x: 1/x})
#print(f4)
#print(f4.as_poly().intervals())
### diaxwrismos gia (1, 2)

f1 = (f.subs({x : x+1})).simplify()
M = M.subs({x: x+1})
print(f1)
print(f1.as_poly().intervals())

f2 = (f1.subs({x : 1/x})*x**3).simplify()
M = M.subs({x : 1/x})
print(f2)
print(f2.as_poly().intervals())

f3 = (f2.subs({x : x+2})).simplify()
M = M.subs({x: x+2})
print(f3)
print(f3.as_poly().intervals())

f4 = (f3.subs({x : 1/x})*x**3).simplify()
M = M.subs({x: 1/x})
print(f4)
print(f4.as_poly().intervals())

f5 = (f4.subs({x : x+4})).simplify()
M = M.subs({x: x+4})
print(f5)
print(f5.as_poly().intervals())

f6 = (f5.subs({x : 1/x})*x**3).simplify()
M = M.subs({x: 1/x})
print(f6)
print(f6.as_poly().intervals())

print(M)
pprint(M)
pprint(M.simplify())
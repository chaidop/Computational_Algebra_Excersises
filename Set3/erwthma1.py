from sympy import *
x = S('x')
f = x**2 - 17458
f132 = x**2 + 264*x - 34

for i in range(1, 134):
    f = f.subs({x : x + 1})
    #meta apo ',i,' antikatastaseis ths morfhs x<-x+1 pairnoyme
    print('i=',i,'\n',f.expand(),'\n')
print( f.as_poly().intervals() );
#antikatastash me 100*x
f = x**2 - 17458
f100 = f.subs({x : 100 * x});
print('f100=','\n',f100.expand(),'\n')
print( f100.as_poly().intervals() );

f = f100
for i in range(1, 5):
    f = f.subs({x : x + 1}).expand()
    print(f)

print( f.as_poly().intervals() );
#vriskei sto (100, 200) ara:
f = f100
f100 = f.subs({x : x + 1});
print(f100.expand())
#f100(x/100) = f gia i=100 epanalipseis
f100_div = f100.subs({x : x/100});
print(f100_div.expand())

# tha to pame twra gia vhma 10 apo to f100:
f = f100.subs({x : x/10})
for i in range(1, 10):
    f = f.subs({x : x + 1})
    print(i, ' substitutions::',f.expand())
#vriskei anamesa sto (30, 40), dld (130, 140)
#opote antikatastash pali me to f130 kai me vhma 1
f = f100.subs({x : x/10})
for i in range(1, 4):
    f = f.subs({x : x + 1})
f130 = f
print('f130 = ',f130.expand())
#pame me vhma 1 twra na apomonwsoume th riza
f = f130.subs({x : x/10})
for i in range(1, 10):
    f = f.subs({x : x + 1})
    print(i, ' substitutions::',f.expand())
#vrhkame sto diasthma (2, 3), dld sto (132, 133)
f = f130.subs({x : x/10})
for i in range(1, 3):
    f = f.subs({x : x + 1})
    print(i, ' substitutions::',f.expand())

print('f132 = ',f132.expand())
print( f132.as_poly().intervals() );

########
######
#Moebius
######
########
#for f132:
#exei riza sto (0,1) ara pame kai kanoyme
#antikatastasi morfhs x<-1/x
print('==================')
M = x
f = (f132.subs({x : 1/x})*x**2 ).simplify()
M = 1/x
print(f)
print(f.as_poly().intervals())

f1 = (f.subs({x : x + 7})).simplify()
M = M.subs({x : x+7})
print(f1)
print(f1.as_poly().intervals())

f2 = (f1.subs({x : 1/x})*x**2).simplify()
M = M.subs({x : 1/x})
print(f2)
print(f2.as_poly().intervals())

f3 = (f2.subs({x : x + 1})).simplify()
M = M.subs({x : x+1})
print(f3)
print(f3.as_poly().intervals())

f4 = (f3.subs({x : 1/x})*x**2).simplify()
M = M.subs({x : 1/x})
print(f4)
print(f4.as_poly().intervals())

f5 = (f4.subs({x : x + 3})).simplify()
M = M.subs({x : x+3})
print(f5)
print(f5.as_poly().intervals())

f6 = (f5.subs({x : 1/x})*x**2).simplify()
M = M.subs({x : 1/x})
print(f6)
print(f6.as_poly().intervals())
## as doume mexri twra ti kaname
pprint(M)
pprint(M.simplify())
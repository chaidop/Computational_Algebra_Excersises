from sympy import *
from decimal import *
from sympy.polys.subresultants_qq_zz import *

#d0: δ_i_-1
#d1: δ_i
#y0: ψ_i_-1
#y1: ψ_i
#r0: r_i_-2
#r1: r_i_-1
resultant_list = []
sylvester_list = []
x = S('x')
f = x**8 + x**6 -3*x**4 - 3*x**3 + 8*x**2 + 2*x - 5
g = 3*x**6 + 5*x**4 - 4*x**2 - 9*x + 21
# p = x**6+ x**5 -1*x**4 - 1*x**3 + x**2 -1*x + 1
# q = diff(p)

# k= x**3 +5*x**2 -7*x + 7
# l = 5*x**2 - 6*x +8

# s4 = sylvester(p,q,x,2)
# s5 = sylvester(k,l,x,2)

resultant_list.append(f)
resultant_list.append(g)
sylvester_list.append(f)
sylvester_list.append(g)
r0=f
r1=g

y0=-1
d0 = degree(r0,x) - degree(r1,x) + 1
d1 = d0
b0=(-1)**d0

s2 = sylvester(f, g, x,2)
mbs = bezout(f, g, x)
r2 = -rem_z(r0, r1, x) / abs(b0)
resultant_list.append(r2)
print("b r0 r1 y d")
print(b0, r0, r1, y0, d0)
print("The resultant is: ")
print(r2)

pprint(s2)
#print("And the Bezout is:")
#print(mbs)
#resultant is of degree 4, so we delete the last 4 pairs of the matrix
#s3 = s2
s2.row_del(8); s2.row_del(8);
s2.row_del(8); s2.row_del(8);
s2.row_del(8); s2.row_del(8);
s2.row_del(8); s2.row_del(8);
pprint(s2)

print(int(det(s2[:, 0:8])))
pprint(s2)
sylvester_list.append(int(det(s2[:, 0:8])))
s2.col_swap(7, 8);
print(int(det(s2[:, 0:8])))
pprint(s2[:, 0:8])
s2.col_swap(7, 9);
print(int(det(s2[:, 0:8])))
pprint(s2[:, 0:8])
s2.col_swap(7, 10);
print(int(det(s2[:, 0:8])))
pprint(s2[:, 0:8])
s2.col_swap(7, 11);
print(int(det(s2[:, 0:8])))
pprint(s2[:, 0:8])

r0 = r1
r1 = r2
d0 = d1

d1 = degree(r0,x) - degree(r1,x) + 1
y1 = (-LC(r0,x))**(d0-1)/(y0**(d0-2))
b1 = -LC(r0,x)*(y1**(d1-1))
r2 = -rem_z(r0, r1, x) / abs(b1)

resultant_list.append(r2)
print("b r0 r1 y d")
print(b1, r0, r1, y1, d0)
print("The resultant is: ")
print(r2)
s2 = sylvester(f, g, x,2)
pprint(s2)
s2.row_del(12)
s2.row_del(12)
s2.row_del(12)
s2.row_del(12)

pprint(s2)
print(int(det(s2[:, 0:12])))
pprint(s2[:, 0:12])
sylvester_list.append(int(det(s2[:, 0:12])))
s2.col_swap(11,12);
print(int(det(s2[:, 0:12])))
pprint(s2[:, 0:12])
s2.col_swap(11,13);
print(int(det(s2[:, 0:12])))
pprint(s2[:, 0:12])

r0 = r1
r1 = r2
d0 = d1
y0=y1
d1 = degree(r0,x) - degree(r1,x) + 1
y1 = (-LC(r0,x))**(d0-1)/(y0**(d0-2))
b1 = -LC(r0,x)*(y1**(d1-1))
r2 = -rem_z(r0, r1, x) / abs(b1)
resultant_list.append(r2)
print("b r0 r1 y d")
print(b1, r0, r1, y1, d0)
print("The resultant is: ")
print(r2)

s2 = sylvester(f, g, x,2)
s2.row_del(14) 
s2.row_del(14)
pprint(s2)

print(det(s2[:, 0:14]))
pprint(s2[:, 0:14])
sylvester_list.append(det(s2[:, 0:14]))
s2.col_swap(13, 14);
print(det(s2[:, 0:14]))
pprint(s2[:, 0:14])

r0 = r1
r1 = r2
d0 = d1
y0=y1
d1 = degree(r0,x) - degree(r1,x) + 1
y1 = (-LC(r0,x))**(d0-1)/(y0**(d0-2))
b1 = -LC(r0,x)*(y1**(d1-1))
r2 = -rem_z(r0, r1, x) / abs(b1)
resultant_list.append(r2)
print("b r0 r1 y d")
print(b1, r0, r1, y1, d0)
print("The resultant is: ")
print(r2)

s2 = sylvester(f, g, x,2)

pprint(s2)

print(det(s2))
sylvester_list.append(det(s2))
print(sign_seq(resultant_list, x))
print(sign_seq(sylvester_list, x))
#print(sign_seq(mss, x))

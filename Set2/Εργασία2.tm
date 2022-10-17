<TeXmacs|1.99.13>

<style|<tuple|generic|greek>>

<\body>
  <doc-data|<doc-title|\<#395\>\<#3C1\>\<#3B3\>\<#3B1\>\<#3C3\>\<#3AF\>\<#3B1\>
  2: \<#3A4\>\<#3BF\> \<#398\>\<#3B5\>\<#3CE\>\<#3C1\>\<#3B7\>\<#3BC\>\<#3B1\>
  \<#3C4\>\<#3B7\>\<#3C2\> Anna Johnson>>

  \;

  <strong|a)<em|>>In 1853 Sylvester discovered that, for complete Sturm
  sequences in <math|\<bbb-Z\>>[x], the coefficients of the polynomial
  remainders can be correctly computed as determinants of submatrices of
  sylvester2, a little known form of Sylvester's matrix of dimension 2n
  \<times\> 2n.We call these determinants modified subresultants. However,
  Sylvester's result of 1853 did not carry over to incomplete Sturm
  sequences, since the signs of the coefficients could not be correctly
  computed. We will see that from our result.

  Also, instead of computing the Sylveter matrix, because its dimensions are
  too big, we could continue our caclulations using the equivalent Bezzout
  matrix of dimensions <math|n\<times\>n>, where
  <math|n=max<around*|{|deg<around*|(|f|)>,deg<around*|(|g|)>|}>>. The Bezout
  matrix, with the help of the function <strong|bezout(f, g, x)> in python,
  is:

  BS2 =[[-3, 148, -63, -38, 0, 36, 0, 21],\ 

  <space|2em>[148, -127, -11, 17, 36, -15, 21, -9],

  <space|2em>[-63, -11, 29, 8, -15, -7, -9, -4],\ 

  <space|2em>[-38, 17, 8, 0, -7, 0, -4, 0],\ 

  <space|2em>[0, 36, -15, -7, 0, 10, 0, 5],\ 

  <space|2em>[36, -15, -7, 0, 10, 0, 5, 0],\ 

  <space|2em>[0, 21, -9, -4, 0, 5, 0, 3],\ 

  <space|2em>[21, -9, -4, 0, 5, 0, 3, 0]])

  The Sylvester 2 matrix is:

  S2 = ([[1, 0, 1, 0, -3, -3, 8, 2, -5, 0, 0, 0, 0, 0, 0, 0],\ 

  [0, 0, 3, 0, 5, 0, -4, -9, 21, 0, 0, 0, 0, 0, 0, 0],\ 

  [0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0, 0, 0, 0, 0, 0],\ 

  [0, 0, 0, 3, 0, 5, 0, -4, -9, 21, 0, 0, 0, 0, 0, 0],\ 

  [0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0, 0, 0, 0, 0],

  \ [0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21, 0, 0, 0, 0, 0],

  \ [0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0, 0, 0, 0],

  \ [0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21, 0, 0, 0, 0],

  \ [0, 0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0, 0, 0],

  \ [0, 0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21, 0, 0, 0],

  \ [0, 0, 0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0, 0],

  \ [0, 0, 0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21, 0, 0],\ 

  [0, 0, 0, 0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0],\ 

  [0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21, 0],

  \ [0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5],\ 

  [0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21]])

  For the sake of clarity, we will continue with the Sylvester matrix and not
  the Bezout, even though the results are the same.

  We compute the first remainder, with the help of rem_z(f, g, x) function:\ 

  <\equation*>
    R1=-rem_z<around*|(|f,g,x|)>/LC<around*|(|f,g|)><rsup|2>=-15*x*<rsup|4> +
    3*x**<rsup|2> - 9
  </equation*>

  Since the remainder R1 is of degree 4, we delete the last 4 pairs of the
  matrix:

  S2 =

  [1, 0, 1, 0, -3, -3, 8, 2, -5, 0, 0, 0, 0, 0, 0, 0],\ 

  [0, 0, 3, 0, 5, 0, -4, -9, 21, 0, 0, 0, 0, 0, 0, 0],\ 

  [0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0, 0, 0, 0, 0, 0],\ 

  [0, 0, 0, 3, 0, 5, 0, -4, -9, 21, 0, 0, 0, 0, 0, 0],\ 

  [0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0, 0, 0, 0, 0],

  [0, 0, 0, 0, 3, 0, 5, \ 0, -4, -9,21, 0, 0, 0, 0, 0],

  [0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0, 0, 0, 0],

  [0, 0, 0, 0, 0, 3, 0, \ 5, 0, -4, -9, 21, 0, 0, 0, 0])

  Now, we will compute the coefficients of the polynomial of degree 4 of the
  form <math|a<rprime|'>x<rsup|4> + b<rprime|'>x<rsup|3> +
  c<rprime|'>x<rsup|2>+d<rprime|'>x+e<rprime|'>> \ with the help of
  <strong|col_swap()>. For each 4 of the coefficients, we calculate the
  derivative of the new matrix, with the correct shifted columns. Then, the
  reduced coefficients are:

  <\eqnarray*>
    <tformat|<table|<row|<cell|a<rprime|'>=<det|<tformat|<table|<row|<cell|1,0,1,0,-3,-3,8,2>>|<row|<cell|0,0,3,0,5,0,-4,-9>>|<row|<cell|0,1,0,1,0,-3,-3,8>>|<row|<cell|0,0,0,3,0,5,0,-4>>|<row|<cell|0,0,1,0,1,0,-3,-3>>|<row|<cell|0,0,0,0,3,0,5,0>>|<row|<cell|0,0,0,1,0,1,0,-3>>|<row|<cell|0,0,0,0,0,3,0,5>>>>>>|<cell|=>|<cell|-15>>|<row|<cell|swap
    8th column with the 9th:>|<cell|>|<cell|>>|<row|<cell|b<rprime|'>=<det|<tformat|<table|<row|<cell|1,0,1,0,-3,-3,8,-5>>|<row|<cell|0,0,3,0,5,0,-4,21>>|<row|<cell|0,1,0,1,0,-3,-3,2>>|<row|<cell|0,0,0,3,0,5,0,-9>>|<row|<cell|0,0,1,0,1,0,-3,8>>|<row|<cell|0,0,0,0,3,0,5,-4>>|<row|<cell|0,0,0,1,0,1,0,-3>>|<row|<cell|0,0,0,0,0,3,0,0>>>>>>|<cell|=>|<cell|0>>|<row|<cell|swap
    8th column with 10th:>|<cell|>|<cell|>>|<row|<cell|c<rprime|'>=<det|<tformat|<table|<row|<cell|1,0,1,0,-3,-3,8,0>>|<row|<cell|0,0,3,0,5,0,-4,0>>|<row|<cell|0,1,0,1,0,-3,-3,-5>>|<row|<cell|0,0,0,3,0,5,0,21>>|<row|<cell|0,0,1,0,1,0,-3,2>>|<row|<cell|0,0,0,0,3,0,5,-9>>|<row|<cell|0,0,0,1,0,1,0,8>>|<row|<cell|0,0,0,0,0,3,0,-4>>>>>>|<cell|=>|<cell|3>>|<row|<cell|swap
    8th with 11th:>|<cell|>|<cell|>>|<row|<cell|d<rprime|'>=<det|<tformat|<table|<row|<cell|1,0,1,0,-3,-3,8,2>>|<row|<cell|0,0,3,0,5,0,-4,-9>>|<row|<cell|0,1,0,1,0,-3,-3,8>>|<row|<cell|0,0,0,3,0,5,0,-4>>|<row|<cell|0,0,1,0,1,0,-3,-3>>|<row|<cell|0,0,0,0,3,0,5,0>>|<row|<cell|0,0,0,1,0,1,0,-3>>|<row|<cell|0,0,0,0,0,3,0,5>>>>>>|<cell|=>|<cell|0>>|<row|<cell|swap
    8th with 12th:>|<cell|>|<cell|>>|<row|<cell|e<rprime|'>=<det|<tformat|<table|<row|<cell|1,0,1,0,-3,-3,8,2>>|<row|<cell|0,0,3,0,5,0,-4,-9>>|<row|<cell|0,1,0,1,0,-3,-3,8>>|<row|<cell|0,0,0,3,0,5,0,-4>>|<row|<cell|0,0,1,0,1,0,-3,-3>>|<row|<cell|0,0,0,0,3,0,5,0>>|<row|<cell|0,0,0,1,0,1,0,-3>>|<row|<cell|0,0,0,0,0,3,0,5>>>>>>|<cell|=>|<cell|-9>>>>
  </eqnarray*>

  Already we can see how the coefficients don't match the solution found with
  polynomial divisions.

  Next remainder is:

  <\equation*>
    R2=-rem_z<around*|(|g,R1,x|)>/LC<around*|(|g,R1|)><rsup|2>=65*x*<rsup|2>
    + 125*x -245
  </equation*>

  It is of degree 2, so we delete the last 2 pairs of s2:

  S2 =

  \<#23A1\>1 \ 0 \ 1 \ 0 \ -3 \ -3 \ 8 \ \ 2 \ \ -5 \ 0 \ \ 0 \ \ 0 \ \ 0
  \ \ 0 \ \ 0 \ 0\<#23A4\>

  \<#23A2\>0 \ 0 \ 3 \ 0 \ 5 \ \ 0 \ \ -4 \ -9 \ 21 \ 0 \ \ 0 \ \ 0 \ \ 0
  \ \ 0 \ \ 0 \ 0\<#23A5\>

  \<#23A2\>0 \ 1 \ 0 \ 1 \ 0 \ \ -3 \ -3 \ 8 \ \ 2 \ \ -5 \ 0 \ \ 0 \ \ 0
  \ \ 0 \ \ 0 \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 3 \ 0 \ \ 5 \ \ 0 \ \ -4 \ -9 \ 21 \ 0 \ \ 0 \ \ 0
  \ \ 0 \ \ 0 \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 1 \ 0 \ 1 \ \ 0 \ \ -3 \ -3 \ 8 \ \ 2 \ \ -5 \ 0 \ \ 0
  \ \ 0 \ \ 0 \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 0 \ 3 \ \ 0 \ \ 5 \ \ 0 \ \ -4 \ -9 \ 21 \ 0 \ \ 0
  \ \ 0 \ \ 0 \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 1 \ 0 \ \ 1 \ \ 0 \ \ -3 \ -3 \ 8 \ \ 2 \ \ -5 \ 0
  \ \ 0 \ \ 0 \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 0 \ 0 \ \ 3 \ \ 0 \ \ 5 \ \ 0 \ \ -4 \ -9 \ 21 \ 0
  \ \ 0 \ \ 0 \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 0 \ 1 \ \ 0 \ \ 1 \ \ 0 \ \ -3 \ -3 \ 8 \ \ 2 \ \ -5
  \ 0 \ \ 0 \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 0 \ 0 \ \ 0 \ \ 3 \ \ 0 \ \ 5 \ \ 0 \ \ -4 \ -9 \ 21
  \ 0 \ \ 0 \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 0 \ 0 \ \ 1 \ \ 0 \ \ 1 \ \ 0 \ \ -3 \ -3 \ 8 \ \ 2
  \ \ -5 \ 0 \ 0\<#23A5\>

  \<#23A3\>0 \ 0 \ 0 \ 0 \ 0 \ \ 0 \ \ 0 \ \ 3 \ \ 0 \ \ 5 \ \ 0 \ \ -4 \ -9
  \ 21 \ 0 \ 0\<#23A6\>

  The coefficients are:

  <\eqnarray*>
    <tformat|<table|<row|<cell|a<rprime|'>=<det|<tformat|<table|<row|<cell|1,
    0, 1, 0, -3, -3, 8, 2, -5, 0, 0, 0, 0, 0>>|<row|<cell|0, 0, 3, 0, 5, 0,
    -4, -9, 21, 0, 0, 0, 0, 0>>|<row|<cell|0, 1, 0, 1, 0, -3, -3, 8, 2, -5,
    0, 0, 0 , 0>>|<row|<cell|0, 0, 0, 3, 0, 5, 0, -4, -9, 21, 0, 0, 0,
    0>>|<row|<cell|0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0, 0,
    0>>|<row|<cell|0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21, 0, 0,
    0>>|<row|<cell|0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0,
    0>>|<row|<cell|0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21, \ 0,
    0>>|<row|<cell|0, 0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5,
    0>>|<row|<cell|0, 0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21,
    0>>|<row|<cell|0, 0, 0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2,
    -5>>|<row|<cell|0, 0, 0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9,
    21>>>>>>|<cell|=>|<cell|65>>|<row|<cell|swap 12th column with the
    13th:>|<cell|>|<cell|>>|<row|<cell|b<rprime|'>=<det|<tformat|<table|<row|<cell|1,
    0, 1, 0, -3, -3, 8, 2, -5, 0, 0>>|<row|<cell|0, 0, 3, 0, 5, 0, -4, -9,
    21, 0, 0>>|<row|<cell|0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0>>|<row|<cell|0,
    0, 0, 3, 0, 5, 0, -4, -9, 21,0>>|<row|<cell|0, 0, 1, 0, 1, 0, -3, -3, 8,
    2, -5>>|<row|<cell|0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21>>|<row|<cell|0, 0,
    0, 1, 0, 1, 0, -3, -3, 8, 2, -5>>|<row|<cell|0, 0, 0, 0, 0, 3, 0, 5, 0,
    -4, -9, 21>>|<row|<cell|0, 0, 0, 0, 1, 0, 1, 0, -3, -3, 8,
    2>>|<row|<cell|0, 0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9>>|<row|<cell|0, 0, 0,
    0, 0, 1, 0, 1, 0, -3, -3, 8>>|<row|<cell|0, 0, 0, 0, 0, 0, 0, 3, 0, 5, 0,
    -4>>>>>>|<cell|=>|<cell|125>>|<row|<cell|swap 12th with
    14th:>|<cell|>|<cell|>>|<row|<cell|c<rprime|'>=<det|<tformat|<table|<row|<cell|1,
    0, 1, 0, -3, -3, 8, 2, -5, \ 0, 0, 0>>|<row|<cell|0, 0, 3, 0, 5, 0, -4,
    -9, 21, \ 0, 0, 0>>|<row|<cell|0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0,
    0>>|<row|<cell|0, 0, 0, 3, 0, 5, 0, -4, -9, 21, \ 0, 0>>|<row|<cell|0, 0,
    1, 0, 1, 0, -3, -3, 8, 2, -5, 0>>|<row|<cell|0, 0, 0, 0, 3, 0, 5, 0, -4,
    -9, 21, \ 0>>|<row|<cell|0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2,
    0>>|<row|<cell|0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9, \ 0>>|<row|<cell|0, 0,
    0, 0, 1, 0, 1, 0, -3, -3, 8, -5>>|<row|<cell|0, 0, 0, 0, 0, 0, 3, 0, 5,
    0, -4, 21>>|<row|<cell|0, 0, 0, 0, 0, 1, 0, 1, 0, -3, -3,
    2>>|<row|<cell|0, 0, 0, 0, 0, 0, 0, 3, 0, 5,
    0,-9>>>>>>|<cell|=>|<cell|-245>>>>
  </eqnarray*>

  For remainder R3:

  <\equation*>
    R3=-rem_z<around*|(|R1,R2,x|)>/LC<around*|(|R1,R2|)><rsup|2>=-9326*x +
    12300
  </equation*>

  It is of degree 1 so we delete the last pair in the S2 matrix:

  S2=

  \<#23A1\>1 \ 0 \ 1 \ 0 \ -3 \ -3 \ 8 \ \ 2 \ \ -5 \ 0 \ \ 0 \ \ 0 \ \ 0
  \ \ 0 \ \ 0 \ \ 0\<#23A4\>

  \<#23A2\>0 \ 0 \ 3 \ 0 \ 5 \ \ 0 \ \ -4 \ -9 \ 21 \ 0 \ \ 0 \ \ 0 \ \ 0
  \ \ 0 \ \ 0 \ \ 0\<#23A5\>

  \<#23A2\>0 \ 1 \ 0 \ 1 \ 0 \ \ -3 \ -3 \ 8 \ \ 2 \ \ -5 \ 0 \ \ 0 \ \ 0
  \ \ 0 \ \ 0 \ \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 3 \ 0 \ \ 5 \ \ 0 \ \ -4 \ -9 \ 21 \ 0 \ \ 0 \ \ 0
  \ \ 0 \ \ 0 \ \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 1 \ 0 \ 1 \ \ 0 \ \ -3 \ -3 \ 8 \ \ 2 \ \ -5 \ 0 \ \ 0
  \ \ 0 \ \ 0 \ \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 0 \ 3 \ \ 0 \ \ 5 \ \ 0 \ \ -4 \ -9 \ 21 \ 0 \ \ 0
  \ \ 0 \ \ 0 \ \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 1 \ 0 \ \ 1 \ \ 0 \ \ -3 \ -3 \ 8 \ \ 2 \ \ -5 \ 0
  \ \ 0 \ \ 0 \ \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 0 \ 0 \ \ 3 \ \ 0 \ \ 5 \ \ 0 \ \ -4 \ -9 \ 21 \ 0
  \ \ 0 \ \ 0 \ \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 0 \ 1 \ \ 0 \ \ 1 \ \ 0 \ \ -3 \ -3 \ 8 \ \ 2 \ \ -5
  \ 0 \ \ 0 \ \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 0 \ 0 \ \ 0 \ \ 3 \ \ 0 \ \ 5 \ \ 0 \ \ -4 \ -9 \ 21
  \ 0 \ \ 0 \ \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 0 \ 0 \ \ 1 \ \ 0 \ \ 1 \ \ 0 \ \ -3 \ -3 \ 8 \ \ 2
  \ \ -5 \ 0 \ \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 0 \ 0 \ \ 0 \ \ 0 \ \ 3 \ \ 0 \ \ 5 \ \ 0 \ \ -4 \ -9
  \ 21 \ 0 \ \ 0\<#23A5\>

  \<#23A2\>0 \ 0 \ 0 \ 0 \ 0 \ \ 0 \ \ 1 \ \ 0 \ \ 1 \ \ 0 \ \ -3 \ -3 \ 8
  \ \ 2 \ \ -5 \ 0\<#23A5\>

  \<#23A3\>0 \ 0 \ 0 \ 0 \ 0 \ \ 0 \ \ 0 \ \ 0 \ \ 3 \ \ 0 \ \ 5 \ \ 0 \ \ -4
  \ -9 \ 21 \ 0\<#23A6\>

  The coefficients are:

  <\eqnarray*>
    <tformat|<table|<row|<cell|a<rprime|'>=<det|<tformat|<table|<row|<cell|1,
    0, 1, 0, -3, -3, 8, 2, -5, 0, 0, 0, 0, 0>>|<row|<cell|0, 0, 3, 0, 5, 0,
    -4, -9, 21, 0, 0, 0, 0, 0>>|<row|<cell|0, 1, 0, 1, 0, -3, -3, 8, 2, -5,
    0, 0, 0, 0>>|<row|<cell|0, 0, 0, 3, 0, 5, 0, -4, -9, 21, 0, 0, 0,
    0>>|<row|<cell|0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0, 0,
    0>>|<row|<cell|0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21, 0, 0,
    0>>|<row|<cell|0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0,
    0>>|<row|<cell|0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21, 0,
    0>>|<row|<cell|0, 0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5,
    0>>|<row|<cell|0, 0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21,
    0>>|<row|<cell|0, 0, 0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2,
    -5>>|<row|<cell|0, 0, 0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9,
    21>>|<row|<cell|0, 0, 0, 0, 0, 0, 1, 0, 1, 0, -3, -3, 8,
    2>>|<row|<cell|0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 5, 0, -4,
    -9>>>>>>|<cell|=>|<cell|-9326>>|<row|<cell|swap 14th column with the
    15th:>|<cell|>|<cell|>>|<row|<cell|b<rprime|'>=<det|<tformat|<table|<row|<cell|1,
    0, 1, 0, -3, -3, 8, 2, -5, 0, 0, 0, 0, 0>>|<row|<cell|0, 0, 3, 0, 5, 0,
    -4, -9, 21, 0, 0, 0, 0, 0>>|<row|<cell|0, 1, 0, 1, 0, -3, -3, 8, 2, -5,
    0, 0, 0, 0>>|<row|<cell|0, 0, 0, 3, 0, 5, 0, -4, -9, 21, 0, 0, 0,
    0>>|<row|<cell|0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0, 0,
    0>>|<row|<cell|0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21, 0, 0,
    0>>|<row|<cell|0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5, 0,
    0>>|<row|<cell|0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21, 0,
    0>>|<row|<cell|0, 0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2, -5,
    0>>|<row|<cell|0, 0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21,
    0>>|<row|<cell|0, 0, 0, 0, 0, 1, 0, 1, 0, -3, -3, 8, 2, 0>>|<row|<cell|0,
    0, 0, 0, 0, 0, 0, 3, 0, 5, 0, -4, -9, 21>>|<row|<cell|0, 0, 0, 0, 0, 0,
    1, 0, 1, 0, -3, -3, 8, -5>>|<row|<cell|0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 5,
    0, -4, 21>>>>>>|<cell|=>|<cell|12300>>>>
  </eqnarray*>

  The last coefficient can simply be computed by calculating the determinant
  of the whole matrix, so it is:

  <\equation*>
    a<rprime|'>=det<around*|(|S2|)>=260708
  </equation*>

  So summing up all of the above, the modified subresultants with the
  Sylvester method are:

  [x<rsup|8> + x<rsup|6> - 3x<rsup|4> - 3x<rsup|3> + 8x<rsup|2> + 2x - 5,

  3x<rsup|6>+5x<rsup|4>-4x<rsup|2>-9x+21,

  -15x<rsup|4> 3x<rsup|2> -9,

  65x<rsup|2> 125x -245,

  -9326x + 12300,

  260708]

  And the sign sequence is:

  [1,1,-1,1,-1,1]

  The sign sequence in the Sturm is:

  [1, 1, 1, 1, 1, -1]

  In the case of incomplete polynomials, the Sturm sequence could be
  extracted from Sylvester method, but it is more likely that they will
  differ in sign. However, the absolute values of the coefficients are the
  same in both sequences. Again, it is not at all obvious how to compute the
  correct signs of one sequence from those of the other( this was solved with
  Anna Johnson's theorem, who found that connection between sylvester2
  matrixes and sturm squences in both complete and incomplete polynomials).

  That shows how calculations in incoplete polynomials may differ. This is
  why the matter of incomplete polynomials is so tricky.

  Both Van Vleck and Sylvester were able to obtain the Sturm sequence of two
  polynomials provided their prs was <strong|complete>. They could not do the
  same for incomplete Sturm sequences. It was Anna Johnson Pell, in 1917, who
  ( responding to Van Vleck's work ) showed how to compute incomplete
  modified subresultant prs's without determinant evaluations.

  \;

  Now we have to find the correct sign sequence. For that, we will use the
  Pell-Gordon Theorem on the coefficients we found from the subresultant and
  we will find the correct sign sequence [1, 1, 1, 1, 1, -1]. So now, the
  Pell-Gordon example helped us with coefficients in <math|\<bbb-Q\>>, to
  findthe correct sign seuence of the modified subresultant.

  \;

  <strong|b)>If the polynomials were complete, the Sturm sequence and the
  modified subresutlants computed from the Sylvester method would be
  equivalent. Now, we need to compute it with the Pell-Gordon Theorem (which
  we did in question a) and then we will use Theorem 3 for the sign sequence.\ 

  According to Theorem 3, the modified Euclidean differs only in signs from
  the Euclidean prs. The signs in both sequences follow the pattern:

  <\equation*>
    +,+,-,-,+,+,\<ldots\>
  </equation*>

  So if the sign sequence of the modified Eclidean is [1, 1, 1, 1, 1, -1],
  then the sign sequence for the Euclidean sequence is computed by
  multiplying the above pattern to the Sturm sign sequence, with no need to
  apply the whole Euclidean algorithm. So it is:

  [1, 1, -1, -1, 1, -1]

  <strong|c)>Anna Johnson's managed to calculate the coefficient of the i-th
  remainder is given by:

  <\equation*>
    r<rsub|k><rsup|<around*|(|i|)>>=PG<rsup|<around*|(|i|)>>\<times\>Det<around*|(|i,k|)>
  </equation*>

  Where <math|PG<rsup|<around*|(|i|)>>=<frac|<around*|(|-1|)><rsup|u<rsub|i-1>>*<around*|(|-1|)><rsup|u<rsub|i-2>>\<ldots\><around*|(|-1|)><rsup|u<rsub|1>>*<around*|(|-1|)><rsup|u<rsub|0>>*<around*|(|-1|)><rsup|v<rsub|i-1>>|\<#3C1\><rsub|i-1><rsup|p<rsub|i-1>+1>*\<#3C1\><rsub|i-2><rsup|p<rsub|i-2>+p<rsub|i-1>>\<ldots\>\<#3C1\><rsub|1><rsup|p<rsub|1>+p2>*\<#3C1\><rsub|0><rsup|p<rsub|1>>>>
  for <math|i=1,\<ldots\>,m>

  and where the first (p<rsub|i>-1) coefficients are zero and th p<rsub|i>-th
  coefficient <math|\<#3C1\><rsub|i>=r<rsub|p<rsub|i>-1><rsup|<around*|(|i|)>>>
  is different from zero.

  and also <math|u<rsub|i-1>=1+2+\<cdots\>+p<rsub|i-1>,v<rsub|i-1>=p1+p2+\<cdots\>+p<rsub|i-1>>.

  From the above, the PG calculated for our polynomials <math|f and g> are:

  <\equation*>
    PG<rsup|<around*|(|i|)>>=<around*|{|-<frac|1|27>,<frac|9|125>,-<frac|25|19773>,-<frac|19773|2174356900>|}>
  </equation*>

  We will show how each factor of the PG was calculated.

  <strong|<em|For the -<math|<frac|1|27>> factor (i=1):><strong|>>\ 

  First, we say <math|\<#3C1\><rsub|-1>=1>, as it is the coefficient of
  highest degree of <math|f> and <math|\<#3C1\><rsub|0>=3> as the coefficient
  of highest degree of <math|g>.

  Also, it is true that <math|p<rsub|0>=deg<around*|(|f|)>-deg<around*|(|g|)>=2>.

  We also know from the terminology of the theory that
  <math|p<rsub|1>-2=0\<Rightarrow\>p<rsub|1>=2>.

  Also <math|\<#3C1\><rsub|1>=r<rsub|p<rsub|1>-1><rsup|<around*|(|1|)>>=r<rsub|1><rsup|<around*|(|1|)>>=<frac|5|9>>,
  since <math|R<rsup|<around*|(|1|)>>=-rem<around*|(|f,g,x|)>=<frac|5|9>*x<rsup|4>-<frac|1|9>x<rsup|2>+<frac|1|3>>.

  Thus we deduce <math|u<rsub|0>=1+p<rsub|0>=3 >and
  <math|v<rsub|0>=p<rsub|0>=2.> So from the equation for PG<rsup|(1)> we get:

  <\equation*>
    PG<rsup|<around*|(|1|)>>=<frac|<around*|(|-1|)><rsup|u<rsub|0>>*<around*|(|-1|)><rsup|v<rsub|0>>|\<#3C1\><rsub|0><rsup|p<rsub|0>+1>>=<frac|<around*|(|-1|)><rsup|3>*<around*|(|-1|)><rsup|2>|<around*|(|3|)><rsup|2+1>>=-<frac|1|27>.
  </equation*>

  \;

  <strong|<em|For the <math|<frac|9|125>> factor (i=2):><strong|>>\ 

  We can compute that <math|p<rsub|2>-2=0\<Rightarrow\>p<rsub|2>=2.>\ 

  Also <math|\<#3C1\><rsub|2>=r<rsub|p<rsub|2>-1><rsup|<around*|(|2|)>>=r<rsub|1><rsup|<around*|(|2|)>>=<frac|117|25>>,
  since <math|R<rsup|<around*|(|2|)>>=-rem<around*|(|g,R<rsup|<around*|(|1|)>>|)>=<frac|117|25>*x<rsup|2>+9*x-<frac|441|25>>.

  Also <math|u<rsub|1>=1+p<rsub|1>=3> , <math|v<rsub|1>=p<rsub|0>+p<rsub|1>=4>.
  So <math|PG<rsup|<around*|(|2|)>>> is:

  <\equation*>
    PG<rsup|<around*|(|2|)>>=<frac|<around*|(|-1|)><rsup|u<rsub|1>>*<around*|(|-1|)><rsup|u<rsub|0>>*<around*|(|-1|)><rsup|v<rsub|1>>|\<#3C1\><rsub|1><rsup|p<rsub|1>+1>*\<#3C1\><rsub|0><rsup|p<rsub|0>+p<rsub|1>>>=<frac|<around*|(|-1|)><rsup|3>*<around*|(|-1|)><rsup|3><around*|(|-1|)><rsup|4>|<around*|(|<frac|5|9><rsup|>|)><rsup|3>*3<rsup|4>>=<frac|9|125>.
  </equation*>

  <\paragraph>
    <\equation*>
      \;
    </equation*>
  </paragraph>

  <strong|<em|For the <math|-<frac|25|19773>> factor (i=3):><strong|>>

  We can compute that <math|p<rsub|3>-1=0\<Rightarrow\>p<rsub|3>=1>.

  Also <math|\<#3C1\><rsub|3>=r<rsub|p<rsub|3>-1><rsup|<around*|(|3|)>>=r<rsub|0><rsup|<around*|(|3|)>>=<frac|233150|19773>>,
  since <math|R<rsup|<around*|(|3|)>>=-rem<around*|(|R<rsup|<around*|(|1|)>>,R<rsup|<around*|(|2|)>>|)>=<frac|233150|19773>*x-<frac|102500|6591>>.

  Also <math|u<rsub|2>=1+p<rsub|2>=3> , <math|v<rsub|2>=p<rsub|0>+p<rsub|1>+p<rsub|2>=6>.
  So <math|PG<rsup|<around*|(|3|)>>> is:

  <\equation*>
    PG<rsup|<around*|(|3|)>>=<frac|<around*|(|-1|)><rsup|u<rsub|2>>*<around*|(|-1|)><rsup|u<rsub|1>>*<around*|(|-1|)><rsup|u<rsub|0>>*<around*|(|-1|)><rsup|v<rsub|2>>|\<#3C1\><rsub|2><rsup|p<rsub|2>+1>*\<#3C1\><rsub|1><rsup|p<rsub|1>+p<rsub|2>>*\<#3C1\><rsub|0><rsup|p1+p0>>=<frac|<around*|(|-1|)><rsup|3>*<around*|(|-1|)><rsup|3><around*|(|-1|)><rsup|3><around*|(|-1|)><rsup|6>|<around*|(|<frac|117|25>|)><rsup|3><around*|(|<frac|5|9><rsup|>|)><rsup|4>*3<rsup|4>>=-<frac|25|19773>.
  </equation*>

  <strong|<em|For the <math|-<frac|19773|2174356900>> factor
  (i=4):><strong|>>

  We can compute that <math|p<rsub|4>-1=0\<Rightarrow\>p<rsub|4>=1>.(but this
  is the last step of the calculations, so it is not needed).

  Also <math|\<#3C1\><rsub|4>=r<rsub|p<rsub|4>-1><rsup|<around*|(|4|)>>=r<rsub|0><rsup|<around*|(|4|)>>=-<frac|1288744821|543589225>>,
  since <math|R<rsup|<around*|(|4|)>>=-rem<around*|(|R<rsup|<around*|(|2|)>>,R<rsup|<around*|(|3|)>>|)>=-<frac|1288744821|543589225>>.(again,
  not really needed)

  Also <math|u<rsub|3>=p<rsub|3>=1> , <math|v<rsub|3>=p<rsub|0>+p<rsub|1>+p<rsub|2>+p<rsub|3>=7>.
  So <math|PG<rsup|<around*|(|4|)>>> is:

  <\equation*>
    PG<rsup|<around*|(|4|)>>=<frac|<around*|(|-1|)><rsup|u<rsub|3>><around*|(|-1|)><rsup|u<rsub|2>>*<around*|(|-1|)><rsup|u<rsub|1>>*<around*|(|-1|)><rsup|u<rsub|0>>*<around*|(|-1|)><rsup|v<rsub|3>>|\<#3C1\><rsub|3><rsup|p<rsub|3>+1>\<#3C1\><rsub|2><rsup|p<rsub|2>+p<rsub|3>>*\<#3C1\><rsub|1><rsup|p<rsub|1>+p<rsub|2>>*\<#3C1\><rsub|0><rsup|p1+p<rsub|0>>>=<frac|<around*|(|-1|)><rsup|1><around*|(|-1|)><rsup|3>*<around*|(|-1|)><rsup|3><around*|(|-1|)><rsup|3><around*|(|-1|)><rsup|7>|<around*|(|<frac|233150|19773>|)><rsup|2><around*|(|<frac|117|25>|)><rsup|3><around*|(|<frac|5|9><rsup|>|)><rsup|4>*3<rsup|4>>=-<frac|19773|2174356900>.
  </equation*>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|4tab>|<\with|mode|<quote|math>|math-display|<quote|true>|par-ver-sep|<quote|0.6fn>>
        <\surround|<no-page-break*><vspace*|0.35fn><no-indent><htab|0fn>|<htab|0fn><vspace|0.35fn><no-indent*>>
          \;
        </surround>
      </with> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.15fn>>
    </associate>
  </collection>
</auxiliary>
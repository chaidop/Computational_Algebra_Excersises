<TeXmacs|1.99.13>

<style|generic>

<\body>
  <\padded-center>
    \<#391\>\<#3C3\>\<#3BA\>\<#3B7\>\<#3C3\>\<#3B7\> 10
    \<#3A3\>\<#3B5\>\<#3BB\>\<#3AF\>\<#3B4\>\<#3B1\> 110
  </padded-center>

  \;

  a)

  Calculate gcd(31408 , 2718) from the prime factorizations of the numbers.

  First we analyze \P31408\Q to its prime factors :

  31408 / 2 = 15704\ 

  15704 / 2 = 7852\ 

  7852 / 2 = 3926\ 

  3926 / 2 = 1963

  1963 / 13 = 151

  So the expodential form of 31408 is 2<rsup|4> x 13<rsup|1> x 151<rsup|1>.

  Same for \P2718\Q :

  2718 / 2 = 1359

  1359 / 3 = 453

  453 / 3 = 151

  So the expodential form of 2718 is 2<rsup|1> x 3<rsup|2> x 151<rsup|1>.

  In order to find the gcd(31408 , 2718) we take the common factors and
  raising each to the smaller exponent.

  So gcd(31408 , 2718) = \ 2<rsup|1> x 151<rsup|1>.

  \;

  b)

  Now apply Euclid's algorithm to compute the greatest common divisor.

  According to Euclid's algorithm we know that :

  \;

  gcd(a,b) = gcd(b , a mod b) if b #0 or gcd(a,b) = a if b= 0

  And so we have that :

  gcd(31408 , 2718) = gcd(2718 , 1510) because {31408 = 2718 * 11 + 1510}

  gcd(2718 , 1510) = gcd(1510 , 1208) because {2718 = 1510 * 1 + 1208}

  gcd(1510 , 1208) = gcd(1208 , 302) because {1510 = 1208 * 1 + 302}

  gcd(1208 , 302) = gcd(302 , 0) because {1208 = 302 * 4 + 0}

  gcd (302 , 0) = 302

  \;

  c)

  Next apply the extended Euclidean algorithm to find integers m and n such
  that gcd(31408, 2718) = 31408m + 2718n.

  gcd(31408 , 2718) = gcd(2718 , 1510)\ 

  gcd(2718 , 1510) = gcd(1510 , 1208) and {1510 = 31408 - 2718 * 11}

  gcd(1510 , 1208) = gcd(1208 , 302) and {1208 = 12 * 2718 - 31408}

  gcd(1208 , 302) = gcd(302 , 0) and {302 = 2 * 31408 - 23 * 2718}

  gcd (302 , 0) = 302

  Which means that gcd(31408 , 2718) = 2 * 31408 + 23 * 2718. (with m = 2 and
  n = 23).

  <\wide-tabular>
    <tformat|<cwith|1|1|2|2|cell-halign|c>|<cwith|1|1|3|3|cell-halign|c>|<cwith|1|1|4|4|cell-halign|c>|<cwith|1|1|5|5|cell-halign|c>|<table|<row|<\cell>
      \;
    </cell>|<\cell>
      q
    </cell>|<\cell>
      r1
    </cell>|<\cell>
      a
    </cell>|<\cell>
      b
    </cell>>|<row|<\cell>
      gcd(31408 , 2718)
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      [31408,1,0]
    </cell>|<\cell>
      [2718,0,1]
    </cell>>|<row|<\cell>
      gcd(2718 , 1510)
    </cell>|<\cell>
      11
    </cell>|<\cell>
      1510
    </cell>|<\cell>
      [2719,0,1]
    </cell>|<\cell>
      [1510,1,-11]
    </cell>>|<row|<\cell>
      gcd(1510 , 1208)\ 
    </cell>|<\cell>
      1
    </cell>|<\cell>
      1208
    </cell>|<\cell>
      [1510,1,-11]
    </cell>|<\cell>
      [1208,-1,12]
    </cell>>|<row|<\cell>
      gcd(1208 , 302)
    </cell>|<\cell>
      1
    </cell>|<\cell>
      302
    </cell>|<\cell>
      [1208,-1,12]
    </cell>|<\cell>
      [302,2,-23]
    </cell>>|<row|<\cell>
      gcd(302 , 0)
    </cell>|<\cell>
      4
    </cell>|<\cell>
      0
    </cell>|<\cell>
      [302,2,-23]
    </cell>|<\cell>
      \;
    </cell>>|<row|<\cell>
      302
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      \;
    </cell>|<\cell>
      [302,2,-23]
    </cell>|<\cell>
      \;
    </cell>>>>
  </wide-tabular>

  \;

  d)Apply the binary algorithm to find gcd(31408,2718):

  The algorithm for two positive integers u and v is as follows:

  <\itemize-dot>
    <item>First, it sets a variable g = 1. It checks in a loop whether or not
    u and v are even.

    <item>If they both are, then right shift them, which leads to halving
    them, and multiply g by 2.

    <item>If at least one of the numbers is odd, then check in a loop if
    there is one that is even.

    <item>If yes, right shift that number.

    <item>If both are odd, calculate t=\|u-v\|, set v = min(u,v) and then u =
    t. Do this in a loop, until u or v are even, then go to step 2.\ 

    <item>The algorithm stops, when u=0 or when u = 1. In the latter, it will
    be true that gcd(u,v) = 1.

    <item>In the end of the algorithm, we get: gcd(u,v) = g*v', where v' the
    latest calculated value of v.
  </itemize-dot>

  By applying the algorithm to 31408 and 2718:

  \;

  <space|13em><block*|<tformat|<table|<row|<cell|u>>|<row|<cell|31408>>|<row|<cell|15704>>|<row|<cell|7852>>|<row|<cell|3926>>|<row|<cell|1963>>|<row|<cell|604>>|<row|<cell|302>>|<row|<cell|151>>|<row|<cell|1208>>|<row|<cell|604>>|<row|<cell|302>>|<row|<cell|151>>|<row|<cell|<strong|0<em|>>>>>>><block*|<tformat|<table|<row|<cell|v>>|<row|<cell|2718>>|<row|<cell|1359>>|<row|<cell|1359>>|<row|<cell|1359>>|<row|<cell|1359>>|<row|<cell|1359>>|<row|<cell|1359>>|<row|<cell|1359>>|<row|151>|<row|<cell|151>>|<row|<cell|151>>|<row|<cell|151>>|<row|<cell|151>>>>><block*|<tformat|<table|<row|<cell|g>>|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|>>|<row|<cell|>>|<row|<cell|>>|<row|<cell|>>|<row|<cell|>>|<row|<cell|>>|<row|<cell|>>|<row|<cell|>>|<row|<cell|>>|<row|<cell|>>|<row|<cell|>>>>><block*|<tformat|<table|<row|<cell|Action>>|<row|<cell|right
  shift u, v>>|<row|<cell|right shift u>>|<row|<cell|right shift
  u>>|<row|<cell|right shift u>>|<row|<cell|\|u-v\|>>|<row|<cell|right shift
  u>>|<row|<cell|right shift u>>|<row|<cell|\|u-v\|>>|<row|<cell|right shift
  u>>|<row|<cell|right shift u>>|<row|<cell|right shift
  u>>|<row|<cell|\|u-v\|>>|<row|<cell|>>>>>

  \;

  So we get gcd(31408,2718) = g*v' = 2*151 = 302.
</body>

<\initial>
  <\collection>
    <associate|font-base-size|10>
    <associate|page-medium|paper>
    <associate|par-columns|1>
  </collection>
</initial>

#import "universal.typ":*

#let m1 = $mat(a,b;c,d)$
#let m2 = $mat(e,f;g,h)$

#let AA = $bold(A)$
#let BB = $bold(B)$
#let CC = $bold(C)$
#let II = $bold(I)$

= Matrix Multiplication

$
	m1 m2 = m1 times m2
	\
	m1 m2 != mat(a e, b f; c g, d h)
	\
	m1 m2 = mat(
		a e + b g, a f + b h;
		c e + d g, c f + d h
	)
	\
	mat(a,b) mat(c;d) = mat(a c + b d)
$

#tech
The procedure to do matrix multiplication is as follows:

0. Given $AA BB = CC$, find #CC .
+ Know that #CC will have the height of #AA and the width or #BB .
+ The $(i times j)$th element of #CC will be the summation of the piecewise multiplication of the $i$th row of #AA with the $j$th column of #BB .
+ Repeat the prior step for each element in #CC.

From this we can see that
#highlight[matrix multiplication is defined if and only if
the width of #AA equals the width of #BB].

Further, recognize that
#highlight[matrix multiplication is not commutative].

$
	AA BB != BB AA
$


== The Identity Matrix

$
	mat(1), mat(1,0;0,1), mat(1,0,0;0,1,0;0,0,1),
	mat(1,0,0,0;0,1,0,0;0,0,1,0;0,0,0,1), ...
$

The #term[identity matrix] is a square matrix with
1s along its diagonal and the rest zero, as shown above.
It is usually denoted with $II$,
or sometimes $II_n$ where it is an $n times n$ matrix.

Consider that, with scalar-scalar multiplication, we have the concept of "1",
where anything times 1 is equal to iteslf.
The identity matrix is matrix-multiplication's equivalent.
(You can do the matrix multiplication to show this, if you'd like.)

$
	AA II = AA
	\
	II AA = AA
$



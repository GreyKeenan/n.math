#import "universal.typ":*


#set heading(numbering:"1.")

#set math.mat(delim:"[")

#let hinc(H, h, f) = {
	set heading(offset:H + h)
	include f + ".typ"
	set heading(offset:H)
}
#let H = 0


#outline()

#hinc(H, 0, "matrices-intro")

= Binary Operations

Scalar-matrix multiplication and matrix addition/subtraction are trivial.

$
	k mat(a,b;c,d) = mat(k a, k b; k c, k d)
	\
	mat(a,b;c,d) + mat(e,f;g,h) = mat(a+e,b+f;c+g,d+h)
$

Notice that matrix addition is only defined between equally-sized matrices.

Matrix-scalar addition is formally undefined,
although it is sometimes useful to allow:

$
	k + mat(a,b;c,d) = mat(k+a,k+b;k+c,k+d)
$

Matrix multiplication is more complicated and explained below.

Matrix division is treated as an extension of matrix multiplication,
in the same way that scalar division is
multiplication by a negative exponent.
It will be discussed separately as the "Inverse".

#hinc(H, 1, "matrix-multiplication")

= Unary Operations

#set heading(offset:1)
#include "determinant.typ"

#set heading(offset:1)
#include "transpose.typ"

#set heading(offset:1)
#include "adjugate.typ"

#set heading(offset:0)
== The Trace #TODO

#set heading(offset:1)
#include "inverse-matrices.typ"


#set heading(offset:0)
#include "row-operations.typ"


#set heading(offset:0)
#include "eigenv.typ"

#set heading(offset:0)
= Laplace Tranaformations #TODO

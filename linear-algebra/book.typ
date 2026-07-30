#import "universal.typ":*

#set page(
	numbering:"(1)",
	number-align: right+top,
)
#set text(
	//size:9pt,
)
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

#hinc(H, 1, "determinant")

#hinc(H, 1, "transpose")

#hinc(H, 1, "adjugate")

== The Trace #TODO

#hinc(H, 1, "inverse-matrices")


#hinc(H, 0, "row-operations")


#hinc(H, 0, "eigenv")

= Diagonalization and Exponentiation #TODO

= Laplace Tranaformations #TODO

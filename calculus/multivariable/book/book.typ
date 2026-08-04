
#import "universal.typ":*

#set document(
	title:[Multivariable Calculus]
)
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

#title()

By now, we should be familiar with derivatives and integrals of single-variable functions.
...

Further, I'm going to assume that we're on board with the idea of 3d+ spaces, functions, etc.
These are notes for doing calculus in more than two dimensions,
not notes about how higher-dimensional spaces work to begin with.
So, we should already know how parametric equations and vectors are a useful tool
when working in higher dimensions.

#outline()

// TODO gaussian integral, extra integration techniques?

#hinc(H, 0, "limits")

#hinc(H, 0, "partial-derivatives")

= Application: Approximation Using Partial Derivatives

= Application: Tangent Planes

= Multivariable Extreme Values

= Application: Extreme Values Under Constraints

== Lagrange Multipliers

= Integrals in Higher Dimensions

= Derivatives of Vectors

== Inverting the Gradient, Curl, and Divergence Operations

= About Vector Curves

= Integrals of Vectors

= Green's, Stokes's, and the Divergence Theorems

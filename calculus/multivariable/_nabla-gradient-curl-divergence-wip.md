The Nabla, Gradient, Curl, and Divergence
========================================

<br>

<!-- INDEX -->
* The Nabla Operator
* Gradient
* Divergence
* Curl

<br>


Prerequisites: (TODO links)

* vectors
* partial derivatives


The Nabla Operator
========================================

The "nabla" symbol is an upside-down triangle,
or more specifically, an upside-down capital delta.
(For our purposes, `A` will be used as the nabla symbol in this document.)
The NABLA operator is used to notate gradient, curl, and divergence.
But first, let's get a sense of what the operator is.

Using notation loosely, we think of the nabla operator as a vector:

	let A be NABLA
	let a be the partial symbol

	A = < a/ax, a/ay, a/az, ... >

... where it extends as far as necessary
to match the dimensionality of the space we are working in.

Strictly speaking, NABLA is just an operator.
However, thinking of it as a vector like this
makes it easier to remember why the NABLA operator works the way it does.

Now, let's see how we use it.


Gradient
========================================

The gradient of a scalar-function `f` is given by:

	gradient(f) = NABLAf = Af
	Af = < af/ax, af/ay, af/az, ... >

So, the gradient of a scalar function
will itself be a vector function,
and we cannot take the gradient of a vector function.

TODO: conceptually


Divergence
========================================

The divergence of a vector field `F` is given by:

	F = < P, Q, R >
	divergence(F) = NABLA*F = A*F
	A*F = aP/ax + aQ/ay + aR/az ... and so forth

TODO: explain
TODO: conceptually / incompressibility


Curl
========================================

The curl of a vector field `F` is given by:

	F = < P, Q, R >
	curl(F) = NABLA:x:F = A:x:F
	A:x:F = < aR/ay - aQ/az, aP/az - aR/ax, aQ/ax - aP/ay >

TODO: explain
TODO: conceptually / tendency to rotate around that point


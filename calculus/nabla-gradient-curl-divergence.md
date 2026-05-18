The Nabla, Gradient, Curl, and Divergence
========================================

<br>

<!-- INDEX -->
* The Nabla
* The Gradient of a Scalar Function
* The Divergence of a Vector Function
* The Curl of a Vector Function

<br>


Prerequisites: (TODO links)

* vectors
* partial derivatives


The Nabla
========================================

The "nabla" symbol is an upside-down triangle,
or more specifically, an upside-down capital delta.
(For our purposes, `A` will be used as the nabla symbol.)
The NABLA operator is used to describe gradient, curl, and divergence.
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


The Gradient of a Scalar Function
========================================

We define the "gradient" of a scalar function `f` to be:

	(NABLA)f = Af = < af/ax, af/ay, af/az, ... >

So, the gradient of a scalar function
will itself be a vector function,
and we cannot take the gradient of a vector function.

(TODO: conceptually)


The Divergence of a Vector Function
========================================

	F = < P, Q, R >
	divergence = A*F = aP/ax + aQ/ay + aR/az

TODO: explain
TODO: conceptually / incompressibility


The Curl of a Vector Function
========================================

	F = < P, Q, R >
	curl = A:x:F = < R_y - Q_z, P_z - R_x, Q_x - P_y >

TODO: explain
TODO: conceptually / tendency to rotate around that point


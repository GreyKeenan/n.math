Green's Theorem, Stokes's Theorem, and the Divergence Theorem
========================================

<br>

<!-- INDEX -->
* Green's Theorem
  * The Circulation Form
  * The Flux Form
* Stokes's Theorem: Generalizign Green's Circulation Form
* The Divergence Theorem: Generalizing Green's Flux Form
* Generalizing Stokes's Theorem and The Divergence Theorem

<br>


Prerequisites:

* [derivatives of vectors](derivatives-of-vectors)
* [integrals with vectors](integrals-with-vectors)


Green's Theorem
========================================

Green's theorem has two forms.
We'll explore what each of them means graphically and intuitively later,
but for the moment let's just see what they are.
(I'll start by defining some symbols.)

	let a be the partial symbol
	let S be the long-S symbol
	let F = < P, Q >
	let Z be a connected surface in the xy plane
	let C be the closed curve surrounding PI, oriented counter-clockwise
	let T be the tangent vector to C
	let n be the normal vector to C

First, there is the "curl", "circulation", or "tangential" form:

	S[C](F*T)ds = SS[Z](aP/ay - aQ/ax)dA

Second, there's the equivalent "divergence" or "flux" form:

	S[C](F*n)ds = SS[Z](aP/ax + aQ/ay)dA = SS[PI](NABLA*F)dA

Now, let's look at what each of these means, really.

TODO: relates to FTC in that the "boundary" relates to whats happening all across the inside


The Circulation Form
----------------------------------------

TODO: <https://www.youtube.com/watch?v=JB99RbQAilI>


The Flux Form
----------------------------------------

TODO: <https://www.youtube.com/watch?v=GsjJs71SBec>


Stokes's Theorem: Generalizign Green's Circulation Form
========================================

TODO

	S[C](F*T)ds = SS[Z]((NABLA:x:F)*N)dZ


The Divergence Theorem: Generalizing Green's Flux Form
========================================

TODO

	S[C](F*n)ds = SS[Z](NABLA*F)dZ


Generalizing Stokes's Theorem and The Divergence Theorem
========================================

TODO: the same relationships extend to higher dimensions

TODO: 2d to 3d particularly useful with divergence thm


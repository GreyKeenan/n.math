Derivatives: Antiderivatives
==================================================

> [index](index#the-notes) /
  [derivatives](derivatives) /
  antiderivatives

<br>

<!-- INDEX -->
* Notation / The "Indefinite Integral"
* Antidifferentiation Examples

<br>



Antiderivatives are pretty simple in concept.
If `f'` is the derivative of `f`, `f` is the antiderivative of `f'`.
That's all it is.

"Antidifferentiation" is the process of finding the antiderivatives
of a function.
Generally speaking, if you know your differentiation rules,
it is often trivial to apply them in reverse to find antiderivatives.
It can get more complicated, though.

Antiderivatives are particularly useful due to their relation to
[integrals](integrals).


Notation / The "Indefinite Integral"
==================================================

Antiderivatives are notated using the long-S symbol,
much like [integrals](integrals).

	SLONG (f')dx = f

	SLONG (x^3)dx = (1/4)x^4

This is called the "indefinite integral",
since its notationally like a regular, "definite" integral,
except that the endpoints of the integral are omitted.

If you consider the
[fundamental theorem of calculus](calculus_the-fundamental-theorem),
it makes sense that an antiderivative would be, essentially, an integral.


Antidifferentiation Examples
==================================================

One of the simplest ways to find antiderivates
is just to have a good sense of differentiation rules intuitively.
I know that's not an ideal answer, but it really is the way.
So, with that in mind, I'm just going to lay out some examples.
If they seem confusing, try differentiating the antiderivatives yourself.

	let S be SLONG
	let A, B, C be any constant non-functions-of-x

	S(2x)dx = x^2  + A
	S(6x^2)dx = 2x^3  + A

	S(Ax^B)dx = (A/(B + 1))x^(B + 1)  + C

	S(x^4 - 1/x^2 + 3x + 10)dx
	 = (1/5)x^5 + x^-1 + (3/2)x^2 + 10x  + A

	S(xsinx)dx = -xcosx + sinx  + A

	S(1/x)dx = ln|x|  + A

	S( 1/(1 + xx) )dx = arctan(x)

	S( x^2 + x + 10 )dx
	 = (1/3)x^3 + (1/2)x^2 + 10x  + A
	S( (1/3)x^3 + (1/2)x^2 + 10x + A )dx
	 = (1/12)x^4 + (1/6)x^3 + 5x^2 + Ax  + B
	S( (1/12)x^4 + (1/6)x^3 + 5x^2 + Ax + B )dx
	 = (1/60)x^5 + (1/24)x^4 + (5/3)x^3 + (A/2)x^2 + Bx  + C

In some cases, if you know what the outputs
of the antiderivative are supposed to be,
you may know the value of the `ABC` constants.

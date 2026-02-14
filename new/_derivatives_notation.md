

notation of derivatives
==================================================

Now that you know what a derivative is,
how would you write it out?
Derivatives have their own special notation, and two variants at that.
Hooray.


Prime Notation
--------------------------------------------------

Let's start with prime notation.
It's fairly simple, but it's less-convenient in more-complex cases.

The derivative of `f` at `x` would be written as:

	f'(x)

... and is read as "f prime of x".
For example:

	if    f(x) = xx
	then  f'(x) = 2x
	and   f'(4) = 2(4) = 8

Higher derivatives are written as:

	f''(x)     or   f^(2)(x)   for the second derivative
	f'''(x)    or   f^(3)(x)   for the third derivative
	f''''(x)   or   f^(4)(x)   for the fourth derivative

... and so forth.

> You may notice that this contradicts the
  convention used for powers of the trig functions.
  Yep ...

Further, we can write the derivative of two or more functions
composed in various ways, such as:

	fg'       <-- f times the derivative of g
	(fg)'     <-- the derivative of: f times g
	(f + g)'  <-- the derivative of: f plus g

Finally, you can write the derivative of an expression directly as:

	(expression)'

For example:

	let y = x + 1
	let f(x) = x + 1

	y'  =  f'(x)  =  (x + 1)'

Prime Notation is very concise and simple.
However, Leibniz Notation is often preferred
due to some of its convenient, more-flexible options.


Leibniz Notation
--------------------------------------------------

Leibniz notation is a little less straightforward, in my opinion,
but it makes a lot of sense once you have a more-solid grasp on derivatives.
I will describe it in terms of the prime notation we just went over.

	TODO: explain better what makes it different.
	For ex, how it specifies what you are differentiating
	with respect to.

	/   dA
	:  ----  =  A'(B)
	\   dB

	/   d^2 f
	:  -------  =  f''(x)
	\   dx^2

	/   d
	:  ----(x + 1)  =  (x + 1)'
	\   dx

	/   df |
	:  ----|        =  f'(n)
	\   dx | x = n

> Note that `d`, here, *is not a variable*.
  It acts as a special symbol.
  The `d/d` writing, as well, *is not actual division*.
  It is just special notation, and it is known as a "differentiarion operator".

Leibniz notation is supposedly better for expressing ideas surrounding
multivariable calculus and differential equations.
I haven't taken those classes yet, so I can't elaborate.

Leibniz notation is also related to [differentials](differentials).


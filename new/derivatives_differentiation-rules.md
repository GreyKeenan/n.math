Derivatives: Differentiation Rules
==================================================

> [index](index#the-notes) /
  [derivatives](derivatives) /
  differentiation rules

<br>

	TODO
	putting the pieces together
	implicit differentiation
	logarithmic trick
	summary

<!-- INDEX -->
* The Rules
  * Constants
  * The Constant Multuple Rule
  * The Sum (and Difference) Rule
  * The Power Rule
  * Exponentials
  * Logarithms
  * The Product Rule
  * The Quotient Rule
  * The Chain Rule

<br>

> see also: [the differentiation reference sheet](refsheet/derivatives)

Differentiation is the process of finding the derivative of an expression.
You should have already seen how differentiation can be done
using the limit-definition of a derivative.
It's a slow process, though, when you need to do it a lot.

That's where the differentiation rules come in.
They are a set of recurring patterns
which allow you to skip the algebraic busy-work.
Let's get right to it.


The Rules
==================================================

Before laying out each of the rules,
let's establish a couple variables that will be used to explain them.

First, assume we are differentiating
[with respect to](derivatives#key-concepts) `x`.
Then:

	let  f  and  g  be anything, particularly functions of x

> I will omit the `(x)` arguments for brevity.

	let  c  be any constant (not a function of x)

... and that's really all we'll need.


Constants
--------------------------------------------------

	dc/dx = 0

The derivative with respect to `x` of a value that isn't dependent on `x` is 0.

This pattern is probably the most basic.
Let's demonstrate it using the
[definition of a derivative](derivatives#defining-derivatives).

	f(x) = 10
	df/dx = ?

	lim[h->0] (f(x + h) - f(x)) / h
	lim[h->0] (10 - 10) / h
	0

	df/dx = 0

As you can see, since a change in `x` doesn't affect `f`,
`f` simply cancels out and resolves to zero in the limit.


The Constant Multuple Rule
--------------------------------------------------

	(cf)' = c * f'

This pattern is fairly simple as well.
Let's demonstrate it in the same way:

	(7xx)' = ?

	lim[h->0] (7(x + h)^2 - 7xx) / h
	lim[h->0] 7((x + h)^2 - xx) / h
	7( lim[h->0] ((x + h)^2 - xx) / h )
	7 * (xx)'

	(7xx)' = 7(xx)'

Using the [limit law](limits_laws#the-constant-multiple-law) of the same name,
we proved the constant multiple rule.


The Sum (and Difference) Rule
--------------------------------------------------

	(f + g)' = f' + g'
	(f - g)' = f' - g'

>

	TODO
	show proof
	diff rule follows from constant multiple


The Power Rule
--------------------------------------------------

	(x^c)' = cx^[c - 1]
	c :in: {Q_rationals}

>

	TODO
	c can be negative or roots


Exponentials
--------------------------------------------------

	(c^x)' = ln(c) c^x

>

	TODO
	notice `e` is convenient


Logarithms
--------------------------------------------------

	log_c'(x) = 1 / (ln(c)x)

>

	TODO
	again, notice e convenience


The Product Rule
--------------------------------------------------

	(fg)' = gf' + fg'

>

	TODO
	notice ... is annoying?


The Quotient Rule
--------------------------------------------------

	(fg)' = (gf' - fg') / g^2

>

	TODO
	follows from product & power rules


The Chain Rule
--------------------------------------------------

> Specifying function arguments is relevant here.

	( f(g(x)) )' = f'(g(x)) g'(x)

>

	TODO
	elaborate a lot

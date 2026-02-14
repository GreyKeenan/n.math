Limits: Indeterminate Forms
==================================================

> [index](index#the-notes) /
  [limits](limits) /
  indeterminate forms

<br>

<!-- INDEX -->
* The Indeterminate Forms
* Things That Aren't Indeterminate
* L'Hospital's Rule
* Applying L'Hospital's Rule to Other Indeterminate Forms
  * L'Hospital and I.F. `0 * inf`
  * L'Hospital and I.F. `inf - inf`
  * L'Hospital and the Indeterminate Powers

<br>


Some limits seem impossible to evaluate.
For example, say that `a` is going towards infinity,
and `b` is also going towards infinity (at a different rate).
What, then, is the limit of `a - b`?
Such combinations are known as "indeterminate forms".
The forms classify specific patterns whose limits we can't determine directly.

That isn't to say we can't determine them *at all*.
Sometimes we can; its just less-determinable.
The name is a bit of a misnomer, in my opinion.


The Indeterminate Forms
==================================================

The indeterminate forms are:

* I.F. `inf - inf`
* I.F. `0 * inf`
* I.F. `0/0`
* I.F. `inf/inf`
* I.F. `0^0`
* I.F. `inf^0`
* I.F. `1^inf`

Ultimately, they all boil down to the same problem.
We have two different limits interacting with each other.
Each limit alone has behavior that we could intuit,
but combined they contradict each other;
they are pulling in opposite directions.
So, how do we know which one is stronger?

Don't forget how limits work when considering these forms.
A limit towards zero, for instance, will never actually *be* zero.
So, we can't necessarily expect a form like `0 * inf` to resolve to zero.



Things That Aren't Indeterminate
==================================================

Before continuing, I think its worth recognizing
why some similar-looking limit forms *aren't* indeterminate.

	TODO

	inf * inf and inf + inf
	0^inf
	1^0


L'Hospital's Rule
==================================================

	TODO

	You may have noticed, earlier, that rate of change blah blah.
	Similar to dividing by highest term blah blah


Applying L'Hospital's Rule to Other Indeterminate Forms
==================================================

	TODO


L'Hospital and I.F. `0 * inf`
--------------------------------------------------

It is trivial to convert IF `0 * inf` to IF `0/0` or IF `inf/inf`.
Observe:

	lim f = 0
	lim g = inf

	f * g  =  f / (1/g)  =  g / (1/f)

	f*g         is IF 0*inf
	f / (1/g)   is IF 0/0
	g / (1/f)   is IF inf/inf

Once we have it in the proper form, we can apply L'Hospital's Rule, of course.


L'Hospital and I.F. `inf - inf`
--------------------------------------------------

	TODO

	sometimes


L'Hospital and the Indeterminate Powers
--------------------------------------------------

	TODO

	lim f(x) = 0
	lim g(x) = inf

	y = g^f
	lim y = ?

	lny = flng

	y = e^lny
	so
	lim y = lim e^lny
	lim y = e^[lim lny]

	lim lny = lim flng
	and now we have it in IF 0*inf form which we already know how to solve

Rational Expressions
==================================================

<br>

<!-- INDEX -->
* domains of rational expressions
* Simplifying rational expressions
* "zeroes" of rationals
* Behavior of the rational over time
* Visualizing rationals' behavior & graphs
  * Asymptotes
  * Intercepts

* TODO references & visual examples

<br>

A rational expression is just a fraction
with polynomials as the numerator & denominator.

> recall that polynomials alone don't include division)


domains of rational expressions
==================================================

Because rational expressions involve division,
there are some invalid variable-values,
when they would result in division by zero.

Consider:
~~~
/          3x + 1            3x + 1
: fx = --------------- = ----------------
\       xx - 10x + 21     (x - 7)(x - 3)
~~~

Here, if `x = 7` or `x = 3`,
we would have to divide by zero.
Therefore, those are invalid values for `x`,
and the rational expression/function's domain
is anything other than 7 and 3.

> This is also referred to as a rational having an "*undefined value*",
  or having a "*discontinuity*".


Simplifying rational expressions
==================================================

I wont explain how we simplify fractions here,
but there are a couple things to note for rationals.

When simplifying rationals,
sometimes we can remove the discontinuities.

Consider:
~~~
/       xx - 2x - 8      (x - 4)(x + 2)     x - 4
: fx = -------------- = ---------------- = -------
\       xx + 9x + 14     (x + 7)(x + 2)     x + 7
~~~

In this case, `x = 2` would be a discontinuity
(or "**removable discontinuity**")
for the *original* rational,
but *not* a discontinuity of the simplified rational.

> They may seem unimportant,
  but it is important to keep track of the removed-discontinuities
  when trying to examine the original form.

If we are trying to find undefined values for the original rational,
we need to keep track of ones we remove.
After all, they are still relevant to
the definition of the *original* rational's domain.


"zeroes" of rationals
==================================================

"**zeroes**" are values for `x` which cause the rational to equal 0.
Ofc, this means its values that cause the numerator to evaluate to zero.
They're the counterpart to discontinuities.


Behavior of the rational over time
==================================================

One thing that's useful to understand is
the pattern we can generally expect a rational to conform to
as `x` approaches `+/-` infinity.

> This is a lot like big-O notation, in a sense.
  We are looking at the general shape of the rational.

First, when judging behavior for large values,
you must recognize how higher-degree terms dwarf lower-degree terms,
to the point where they are practically irrelevant.
Thats how exponential stuff works, yada yada.

Next, there are kind of 4 major directions the
rational can move towards as `x` approaches `+/-` infinity.

* towards infinity
* towards negative infinity
* towards zero
* towards a different value (a horizontal asymptote)

So, lets consider:
~~~
/  5xxx + 3xx - 10
: -----------------
\  15xx + 6x + 1
~~~

For the top, we see that the highest-degree term is `5xxx`.
We can expect this to dwarf the lower-degree terms at high values,
so we only need to consider this one.
Likewise, the bottom's highest-degree term is `15xx`.

Then, notice that the numerator has a higher degree.
Therefore, we can expect it to grow at
an exponentially higher rate than the denominator.
A fraction with a higher numerator than denominator grows away from 0,
so its approaching `+/-` infinity.
Which infinity is it though?
Well, since the fraction formed by the highest-degrees is positive,
it will approach `+`infinity.

Then, what about when the degrees are the same?

~~~
/  5xx - 2x + 1
: --------------
\  3xx - 507
~~~

Again, isolate the highest-degrees.
This time they are the same on the top and the bottom.
However, if we were to hypothetically eliminate all of the other terms,
then we could also eliminate the `x` values.

~~~
/  5xx - 2x + 1      5xx ...       5 ...
: -------------- ~> ---------- ~> --------
\  -3xx - 507        -3xx ...      -3 ...
~~~

In this case, as `x` approaches `+/-` infinity,
the `5/3` fraction dwarfs everything else,
and `f(x)` approaches `(-5/3)`.
Of course, it will just get increasingly close to it,
and nevery actually reach it when we factor back-in the lower-degree terms.

> this is also known as a "horizontal asymptote", see below.

So, you would say that for this rational,
as `x` approaches infinity, `f(x)` approaches `(-5/3)`.

---

The thing to keep in mind is that these are just for general behavior,
particularly at extreme values.
At smaller values, the lower-degree terms matter proportionately more,
so the line may have other observable behaviors.

---

Here are a couple other examples:

~~~
/  2x - 10
: ----------
\  -xxx + 2
~~~

> Approaches 0, since the degree of the denominator is higher.
  Specifically, it approaches 0 *from below*, since it's negative.

~~~
/  8xx + 9x - 3
: --------------
\  -2x + 7000
~~~

> Approaches *negative* infinity.
  The fraction formed by the dominating-terms is negative.


Visualizing rationals' behavior & graphs
==================================================

Asymptotes
--------------------------------------------------

Asymptotes can be vertical or horizontal.
They are named for the fact that they respectively create
a horizontal/vertical, straight line when plotting the rational.

Essentially, they are a value that the the rational gets infinitely closer to,
without actually meeting\*.


### horizontal asymptotes

A "**horizontal asympotote**" is a value that `f(x)` gets infinitely closer to
as `|x|` approaches infinity.

The asymptote is a value that, *generally*, `f(x)` cannot equal.
To understand why this is general and not absolute,
consider how we find horizontal asymptotes.

Recall above, when generalizing the behavior of a rational,
if the numerator & denominator have the same degree,
we take the fraction formed by their coefficients as a value
that `f(x)` approaches.
That's the horizontal asymptote.
At high values it will not be reached,
but at *low* values the lower-degree
terms can cause it to cross the asymptote.


### vertical asymptotes

A "**vertical asymptote**" is a value that `x` gets infinitely closer to
as `f(x)` approaches infinity.

On a graph, ofc, this would make a vertical line.
Its a value of `x` that the graph *cant cross*.
So, the vertical asymptotes are the same as the *undefined values*
(for a *fully-simplified* rational).

It's a value that x cannot be, or in other words,
vertical asymptotes are at the discontinuities of the function.


Intercepts
--------------------------------------------------

Just like any graph, we can consider the axis-intercepts.
Of course, the "*zeroes*" of the rational are its x-intercepts,
and the y-intercept is when x = 0.










TODO references & visual examples
==================================================

<https://www.youtube.com/watch?v=Vtcmyr5IGYY>

Extreme Values
==================================================

> [index](index#the-notes) /
  extreme values

<br>

<!-- INDEX -->
* What are extreme values?
* Finding Extreme Values Using Derivatives
  * Examining Critical Values by Checking Adjacent Slopes
  * Examining Critical Values with the Second Derivative
  * Identifying the Absolute Extreme Values

<br>


What are extreme values?
==================================================

The extreme values of a function are simply its maximum and minimum values.
There are two types of extreme values: "absolute" and "local".

First, absolute maximums/minimums are the highest/lowest possible values
in the function's range.
Precisely, **`f(c)` is the absolute maximum of `f` if `f(c) >= f(x)`
for all values of `x` in the domain**.
Similarly, **`f(c)` is the absolute minimum of `f` if `f(c) <= f(x)`
for all values of `x` in the domain**.

> Graphically, these are the topmost or bottommost points of the graph of `f`.

Local maximums/minimums are similar,
but they are only the minum/maximum within a certain interval of the domain,
rather than encompassing the entire function.

> Graphically, they are the tompost/bottommost points
  within a region of the graph.

Precisely, **`f(c)` is a local maximum of `f` if `f(c) >= f(x)`
for `c :ce: (a, b)` and all `x` where `x :ce: [a, b]`.**
Local minimums are defined similarly, of course.

Note that a function does not need to be continuous at a point
for a local extreme value to exist there.
It merely has to be *defined* over
the interval `[a, b]` used in the definition.

Notice also, then, that local extreme values do not exist
at the endpoints of a function's graph.
For instance, if the function `f` has the domain `[h, k]`,
`h` and `k` cannot themselves be local maximums/minimums.
This is *not* the case for absolute extreme values,
which may exist at endpoints.


Finding Extreme Values Using Derivatives
==================================================

Of course, one straightforward way to find extreme values
is by graphing the function and just looking at it.
In other simple cases, you may be able to intuit the extreme values.
How can we do this more precisely, though?
The key is derivatives.

Picture some function `f` which has local extreme values.
Those values, then, are peaks/valleys on the graph.
Consider, what is the slope of `f` at those points?
That is to say, what is the derivative at those points?

The derivative at those points will either be `0`,
in the case of a curved peak/valley,
or undefined, since functions aren't differentiable at corners.
This means that all local extreme values of `f` will occur somewhere
that the derivative of `f` is zero or undefined.

There is a term for such points.
The "critical values" of `f` are points where `f' = 0` or `f'` is undefined.
So, by finding all critical values of `f`,
we have a list of *potential* extreme values.

It's important to note that these are just *potential* extreme values, though.
Sometimes, the slope is just zero at a point, or there's a corner at a point,
and there isn't a maximum or minimum, then.
With that in mind, we have to check each of the critical values
and confirm that they are indeed some extreme value.


Examining Critical Values by Checking Adjacent Slopes
--------------------------------------------------

One way to confirm extreme values is to check the slope on either side of them.
Graphically, we know that a maximum will have a positive slope to the left
and a negative slope to the right.
Similarly, maximums will be negative to the left and positive to the right.

If we find the derivative for some value in the interval
to the left/right of each critical value,
we can determine when they are maximums, minimums, or neither.


Examining Critical Values with the Second Derivative
--------------------------------------------------

Similarly, we can confirm critical values using the second derivative.
We know that [the second derivative of `f`
corresponds to the concavity of `f`](concavity.md).

Picturing the peaks and valleys once again,
(for a curve) we would expect maximums to be concave down
and minimums to be concave up.
By checking each critical value, we can determine maximums/minimums once again.


Identifying the Absolute Extreme Values
--------------------------------------------------

Finally,
the method so far is for identifying *local* extremes.
We can use this to find *absolute* extremes, of course,
by just checking which of the local extremes is the most-extreme.
Additionally, we have to check the endpoints of the function,
since as stated previously,
endpoints may not be local extremes, but can be absolute extremes.

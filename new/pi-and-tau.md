pi (&pi;) and tau (&tau;)
==================================================

<br>

<!-- INDEX -->
* the value of pi
* approximating pi
* calculating pi by measuring circles
* the Gregory-Leibniz series
* the Nilakantha series
* pi as a continued fraction

<br>


Pi (&pi;) and tau (&tau;) are two prominent, irrational constants in math.

Tau is defined as the circumference of a circle whose radius is `1`.
In other words, it is the circumference of the [unit circle](unit-circle).

Pi, then, is defined as `tau / 2`.
It is half of the circumference.

	2pi = tau

Typically, pi is used before tau, but this is an ongoing debate.
You can consider anything in terms of pi as `tau/2` instead,
though, and vice-versa.
It doesn't really matter.

Pi is used most prominently in calculations involving circles or other curves.
It is also extremely relevant for angles
(specifically [radians](radians)) due to its relation to the unit circle.
By extention, then, it is also tied to the [trig functions](trig-functions)
or anything else centered around angles.


the value of pi
==================================================

25 digits of pi are:

	3.14159_26535_89793_23846_26433 ...

With computers, we have calculated pi to over 31 trillion decimal places.

There are a variety of ways to find pi,
and some of them are briefly explained below.


approximating pi
==================================================

Because pi is irrational, we generally need to approximate it when we use it.

Some approximations are:

	3.125         = 25/8
	3.14          = 157/50
	3.1415929235  = 355/113
	3.142857      = 22/7

`3.14` or `22/7` are the most common due to their practicality.


calculating pi by measuring circles
==================================================

One way to calculate pi is to
consider its relationship with circles.
For any circle:

	circumference / diameter = pi

Good luck measuring a circle with precision of
more than 31 trillion decimal places, though!


the Gregory-Leibniz series
==================================================

Another way to calculate pi is by using something called
the "Gregory-Leibniz Series".

	pi/4 = 1/1 - 1/3 + 1/5 - 1/7 + 1/9 - 1/11 ...

Continuing this `-(denominator + 2)` pattern forever, you will get `pi/4`.

> TODO: why?

Unfortunately, you have to do this a *ton* to approximate with any accuracy.
It takes over 300 terms to produce `3.14`.


the Nilakantha series
==================================================

This is another series to calculate pi.

	pi = 3 + 4/(2*3*4) - 4/(4*5*6) + 4/(6*7*8) - 4/(8*9*10) ...

This series increases in accuracy more quickly than the gregory-leibniz series.

> TODO: how quickly?

> TODO: why?


pi as a continued fraction
==================================================

> <https://mathworld.wolfram.com/PiContinuedFraction.html>

A [simple continued fraction](continued-fractions) for pi is:

	[3; 7, 15, 1, 292, 1, 1, 1, 2, 1, 3, 1, 14, 2, 1, 1, 2, 2, 2, 2, ... ]

Notably, the `292` outlier in the sequence is representative of
what makes `355/113` such an accurate approximation of pi.

> TODO: why? convergent?

There is no known pattern to predict the simple continued fraction's addends.
There *are* patterns, however, in some non-simple continued fractions for pi.

	4/pi = 1 + K^[inf][i=0] (1 + 2i)^2 / 2

	pi/2 = the continued fraction:
	numerators: [1, 2*3, 1*2, 4*5, 3*4, 6*7, 5*6, ... ]
	denominators: [1; 3, 1, 3, 1, 3, 1, ... ]



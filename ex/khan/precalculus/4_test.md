Test 4: rationals
==================================================

> <https://www.khanacademy.org/math/precalculus/x9e81a4f98389efdf:rational-functions/x9e81a4f98389efdf:adding-and-subtracting-rational-expressions/test/x9e81a4f98389efdf:rational-functions-unit-test>

<br>

<!-- INDEX -->
* q1 subtract
* q2 multiply
* q3 simplify
* q4 zeroes, vasyms, removable discs
* q5 possible graph
* q6 infer behavior
* q7 word prob
* q8 inferring behavior
* q9 zeroes, v-asym, removable discs
* q10 subtract

<br>


I did part-1 of this unit, like, over a month ago, so we'll see how this goes.


q1 subtract
--------------------------------------------------

	8x               -6
	------------  +  -------
	xx + 8x + 16     xx + 4x

>

	xx + 8x + 16
	(x + 4)^2

	xx + 4x
	x(x + 4)

lcm: `x(x + 4)^2`

	8xx + -6(x + 4)
	8xx - 6x - 24

	8xx - 6x - 24
	-------------
	x(x + 4)^2


q2 multiply
--------------------------------------------------

	-3x + 21     xx - 16
	--------  *  -------
	-2x - 4       x - 7

>

	-3x + 21
	-3(x - 7)

	-2x - 4
	-2(x + 2)

`x != -2`

	xx - 16
	(x - 4)(x + 4)

	x - 7

`x != 7`

	-3(x - 7)(x - 4)(x + 4)
	-----------------------
	-2(x + 2)(x - 7)

	3(x - 4)(x + 4)
	---------------
	2(x + 2)


q3 simplify
--------------------------------------------------

	xx + 10x + 25
	-------------
	8x + 40

>

	(x + 5)^2
	---------
	8(x + 5)

`x != -5`

	(x + 5)
	-------
	   8


q4 zeroes, vasyms, removable discs
--------------------------------------------------

	       xx - 4x - 21
	f(x) = ------------
	          x + 13

>

	(x - 7)(x + 3)
	--------------
	    x + 13

zeroes: 7, -3 \
v-asym: -13


q5 possible graph
--------------------------------------------------

	14x^4 + ax^2 + b
	----------------
	7x^4 + cx^2 + d

let a,b,c,d be unknown constants


* the y-intercept is b/d
* moves towards 14/7, or two

  > there was only 1 with that h-asym


q6 infer behavior
--------------------------------------------------

	x^4 - 4x^3 + 6x
	----------------
	-5x^4 + 8x^2 - 3

>

	x^4 / -5x^4

approaches `-1/5` towards +/-INF


q7 word prob
--------------------------------------------------

Raquel and Miray can spread mulch through the yard in 2 hours.
Raquel would take 0.8 times as many hours as Miray would
take to spread mulch alone.
*How long would it take Miray to spread the mulch alone?*

> Man, I hate these.


Together, their rate is 1 yard per 2 hours.

	...

~~`r + m = 2`~~
No, that doesnt make sense.

	...

The number of yards they can do in an hour is `1/2`.

	r   m   1/2
	- + - = ---
	1 + 1 =  1

and

	 r    m
	--- = -
	0.8   1      dumbass

so

	r    r    0.5
	- + --- = ---
	1   0.8    1

and

	0.8r + r
	---------  =  0.5
	   0.8

	1.8r/0.8 = 0.5

	(18r/10) / (4/5) = 1/2
	18r(5) / 40 = 1/2
	90r / 40 = 1/2
	9r/4 = 1/2
	9r = 2
	r = 2/9

	r + m = 1/2
	2/9 + m = 1/2
	1/2 - 2/9 = m
	9/18 - 4/18
	5/18 = m

Okay, so, M can do 5/18 of a yard in 1 hour.

	(5/18) / 1
	1 / (1/(5/18))
	1 / (18/5)

and M can do 1 yard in 3 and 3/5 hours.

If R does 2/9 yards-per-hour,
then he does 1 yard in 4 and 1/2 hours.
That ... that doesnt line up.
R should be faster.

Oh. Dumb.
It should be:

	r/1 = m/0.8

In effect that just switches r & m from the wrong-evaluation.

M takes 9/2 hours,
and R takes 18/5 hours.

`(b'-')b`

---

TODO: refresh on the fast way to do these, not my dumb way.


q8 inferring behavior
---------------------------------------------------

	4x^5 - 6x^3 + 7xx
	-----------------
	2x^5 - x^4 - 5

approaches `2` when x goes towards +/- inf


q9 zeroes, v-asym, removable discs
--------------------------------------------------

	xx + 5x - 14
	------------
	xx + 4x - 21

>

	(x + 7)(x - 2)
	--------------
	(x + 7)(x - 3)

> I guess a removable discontinuity is also always a removable zero, duh.

zero: 2 \
v-asym: 3 \
removable: -7


q10 subtract
--------------------------------------------------

	4             6x
	---------  -  -------
	9xx - 45x     xx - 25

>

	9xx - 45x
	9x(x - 5)

	xx - 25
	(x + 5)(x - 5)

LCM: `9x(x - 5)(x + 5)`

	4(x + 5) - 6x9x
	4x - 20 - 54xx      you dumbass
	-54xx + 4x - 20

	-54xx + 4x - 20
	----------------
	9x(x - 5)(x + 5)

last one but no checks because Im a cool boy

> I almost did `xx` i swear.

NO!
What did I do wrong ...

Why ... why did I make it negative 20? what?

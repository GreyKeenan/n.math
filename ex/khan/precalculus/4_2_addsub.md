Adding and Subtracting Rationals
==================================================

> <https://www.khanacademy.org/math/precalculus/x9e81a4f98389efdf:rational-functions/x9e81a4f98389efdf:adding-and-subtracting-rational-expressions/a/intro-to-adding-subtracting-rational-expressions>

<br>

<!-- INDEX -->
* Basic
  * q1
  * q2
  * q3
  * q4
* Not-qualified-as-basic
  * q1
  * q2
  * q3
  * q4
  * q5

<br>

> The numerator should be expanded and simplified.
  The denominator should be either expanded or factored.


Basic
==================================================

q1
--------------------------------------------------

	7/x - 2/(x + 8)

---

	7(x + 8) - 2x
	-------------
	x(x + 8)

	7x + 56 - 2x
	-------------
	xx + 8x

	5x + 56
	--------
	xx + 8x

`(b'-')p`

I entered it as `xx` instead of `x^2`.
Khan didn't like that.


q2
--------------------------------------------------

	5/(x - 9) + 4/(x - 6)

---

	5(x - 6) + 4(x - 9)
	-------------------
	(x - 9)(x - 6)


	5x - 30 + 4x - 36
	9x + -66

`(b'-')b`


q3
--------------------------------------------------

	8/(x + 2) + -6/(x + 5)

---

	8(x + 5) + -6(x + 2)
	8x + 40 + -6x + -12
	2x + 28

	2x + 28
	--------------
	(x + 2)(x + 5)

`(b'-')b`


q4
--------------------------------------------------

	6/(x-5) + 1/(x-2)

	6(x-2) + (x-5)
	6x - 12 + x - 5
	7x - 15              oops

	7x - 15
	----------
	(x-5)(x-2)

`(p'-')p`

---

	7x - 17
	----------
	(x-5)(x-2)


Not-qualified-as-basic
==================================================

q1
--------------------------------------------------

	7             5x
	---------  -  -------------
	2xx + 18x     xx + 17x + 72

---

	2xx + 18x
	2(xx + 9x)

		2(xx + 9x + 8 - 8)
		2(xx + 9x + 8) - 16
		2(x + 1)(x + 8) - 16

		unnecessary

	2(xx + 9x)
	2x(x + 9)


	xx + 17x + 72
	(x + 9)(x + 8)

LCM: `2x(x + 9)(x + 8)`

	7(x + 8) + -5x(2x)

	7x + 56 + -10xx
	-10xx + 7x + 56


	-10xx + 7x + 56
	----------------
	2x(x + 9)(x + 8)

check:

	-10(3)^2 + 7(3) + 56
	-90 + 21 + 56
	-90 + 77
	-13

	2(3)(3 + 9)(3 + 8)
	6(12)(11)
	792

	~= -0.01641


	7 / (2(9) + 18(3))
	7 / (4(18))
	7 / 72 ~= 0.097222

	-5(3) / (9 + 17(3) + 72)
	-15 / (81 + 51)
	-15 / 132 ~= -0.113636

	(i added 0.97222 on accident)
		~= 0.858585    oh no

	~= -0.01641


q2
--------------------------------------------------

	1            6
	--------  +  ---------
	7xx - 7x     7xx + 14x

---

	7xx - 7x = 7x(x - 1)

	7xx + 14x
	7x(x + 2)

lcm: `7x(x - 1)(x + 2)`

	(x + 2) + 6(x - 1)
	x + 2 + 6x - 6
	7x - 4

	7x - 4
	----------------
	7x(x - 1)(x + 2)

Skip the check! I'm ~~over~~confident! Yipee!

`(b'-')b`


q3
--------------------------------------------------

	x           7
	-------  -  ---------
	xx - 64     4xx + 32x

>

	xx - 64 = (x - 8)(x + 8)

	4xx + 32x = 4x(x + 8)

lcm: `4x(x - 8)(x + 8)`

	4xx + -7(x - 8)
	4xx + -7x + 56

	4xx + -7x + 56
	----------------
	4x(x - 8)(x + 8)

Again!

~~`(p-.-)p`~~

Nvm; I put `xx` again instead of `x^2`.


q4
--------------------------------------------------

	3                8
	------------  +  -----------
	xx + 8x + 16     xx + x - 12

>

	xx + 8x + 16
	(x + 4)^2

	xx + x - 12
	(x + 4)(x - 3)

lcm: `(x - 3)(x + 4)^2`

	3(x - 3) + 8(x + 4)
	3x - 9 + 8x + 32
	11x + 23

	11x + 23
	----------------
	(x - 3)(x + 4)^2

Checks are for cowards.

`( '-')b`


q5
--------------------------------------------------

	8x         5
	-------- + ------------
	x^2 - 49   xx - 4x - 21

>

	xx - 49
	(x - 7)(x + 7)

	xx - 4x - 21
	(x - 7)(x + 3)

lcm: `(x - 7)(x + 7)(x + 3)`

	8x(x + 3) + 5(x + 7)
	8xx + 24 + 5x + 35      GOT IT! ISSUE HERE
	8xx + 5x + 59

	8xx + 5x + 59
	---------------
	(x-7)(x+7)(x+3)

Okay. Maybe I'll check this one. Fine.

	8(3) / (8 - 49)        dumbass
	24 / -41

	5 / (9 - 12 - 21)
	5 / (9 - 33)
	5 / -24

	~= -0.73699

>

	8(9) + 15 + 59
	72 + 74
	146

	(-4)(10)(6)
	-240

	~= -0.608333

~~aw man.~~
Wait. The first check was wrong

	24 / (9 - 49)
	24 / -40
	6 / -10
	3 / -5

	(3/-5) + (5/-24) ~= -0.808333

Oh. That's still wrong.

Fuck, I cant find why.
Okay, its not a problem with my check anymore.
But ... I can't find any problems with the actual breakdown either.

	-3 / 5 + -5 / 24

	-3(24) = -72
	5(24) = 120

	-5(5) = -25
	24(5) = 120

	-97 / 120

>

	-146 / 240
	-73 / 120

so ... the numerator should have 40 more. Why?
GOT IT!

	8x * 3 != 24
	8x * 3 = 24x

>

	8x(x + 3) + 5(x + 7)
	8xx + 24x + 5x + 35

	8xx + 29x + 35
	---------------
	(x-7)(x+7)(x+3)

Let's check again.

	8(3)(3) + 29(3) + 35
	72 + 87 + 35
	159 + 35
	194

	194 / 2 == 97    (b'-')b

Oh my god.
Fuck.
Oh my god.
I hit "enter" on accident while entering it.
Are you kidding me.
Fucking ... fuck. Fuck fuck.


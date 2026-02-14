Trig Functions Reference Sheet
==================================================

	sine(x) is opposite the angle x
	cosine(x) is adjacent to the angle x
	tanx = sinx/cosx

	csc(x) = 1/sinx
	sec(x) = 1/cosx
	cot(x) = 1/tanx

	arcsin(x) = sin^-1(x)
		range: [-pi/2, pi/2]
		Q1 & Q4
		(obtuse)
	arccos(x) = cos^-1(x)
		range: [0, pi]
		Q1 & Q2
	arctan(x) = cos^-1(x)
		range: (-pi/2, pi/2)
		Q1 & Q4

Special values:

	let  v  be :radical:

	|  x  | pi/2 | pi/3 | pi/4 | pi/6 | 0 |
	|-----|------|------|------|------|---|
	| sin |   1  | v3/2 | v2/2 |  1/2 | 0 |
	| cos |   0  |  1/2 | v2/2 | v3/2 | 1 |

Laws:

	Law of Sines:

	/   a        b        c
	: ------ = ------ = ------ = 2R
	\  sinA     sinB     sinC

	/  sinA     sinB     sinC
	: ------ = ------ = ------
	\   a        b        c

	Law of Cosines:

	cc = aa + bb - 2ab:cos:C
	bb = aa + cc - 2ac:cos:B
	aa = bb + cc - 2bc:cos:A

	Law of Tangents:

	/  a - b     tan(1/2)(A - B)
	: ------- = -----------------
	\  a + b     tan(1/2)(A + B)

Pythagorean identities:

	(sinx)^2 + (cosx)^2 = 1
	(tanx)^2 + 1 = (secx)^2
	(cotx)^2 + 1 = (cscx)^2

Rotations and Reflections:

	sin(-x) = -sinx
	sin(pi - x) = sinx
	sin(x + pi) = -sinx

	cos(-x) = cosx
	cos(pi - x) = -cosx
	cos(x + pi) = -cosx

	sin(x + pi/2) = cosx
	cos(x + pi/2) = sinx

	tan(-x) = -tanx
	tan(pi - x) = -tanx
	tan(x + pi) = tanx
	1/tan(x + pi/2) = -tanx

	The parameter to these functions is an angle,
	so you can add/subtract (2pi) without affecting it.

half-angles:

	sin(x/2) = +/- sqrt( (1 - cosx) / 2 )
	cos(x/2) = +/- sqrt( (1 + cosx) / 2 )
		plus/minus corresponding to the quadrant
	tan(x/2) = sinx / (1 + cosx) = (1 - cosx) / sinx

Addition Identities:

	sin(x + y) = sinxcosy + cosxsiny
		sin(2x) = 2sinxcosx
	cos(x + y) = cosxcosy - sinxsiny
		cos(2x) = (cosx)^2 - (sinx)^2

	tan(x + y) = (tanx + tany) / (1 - tanxtany)

Product Identities

	sinxcosy = (1/2)(sin(x-y) + sin(x+y))
	sinxsiny = (1/2)(cos(x-y) - cos(x+y))
	cosxcosy = (1/2)(cos(x-y) + cos(x+y))

Notable Limits:

	lim[x->0] sinx/x = 1
	lim[x->0] (cosx - 1)/x = 0

Derivatives:

	sin'(x) = cosx
	cos'(x) = -sinx
	tan'(x) = (secx)^2
	csc'(x) = -cscx cotx
	sec'(x) = secx tanx
	cot'(x) = -(cscx)^2

	asin'(x) =  1 / (1 - xx)^[1/2]
	acos'(x) = -1 / (1 - xx)^[1/2]
	atan'(x) =  1 / (1 + xx)
	acsc'(x) = -1 / (|x|(x - 1)^[1/2])
	asec'(x) =  1 / (|x|(x - 1)^[1/2])
	acot'(x) = -1 / (1 + xx)

* the arc-tangent functions don't have sqrts,
  and have addition in the denominator
* the arc-co- functions are just the non-co- functions `* -1`

Antiderivatives:

	Stanxdx = C + ln|secx|
	Ssecxdx = C + ln|secx + tanx|

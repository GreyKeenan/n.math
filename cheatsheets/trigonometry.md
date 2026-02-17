Trigonometry Cheat-Sheet
========================================

<br>

<!-- INDEX -->
* [Definitions](#definitions)
* [Special Values](#special-values)
* [Essential Identities](#essential-identities)
* [Laws](#laws)
* [Calculus](#calculus)
* [Hyperbolic Trig](#hyperbolic-trig)

<br>


Definitions
----------------------------------------

	sinx = opposite / hypotenuse
	cosx = adjacent / hypotenuse
	tanx = opposite / adjacent = sinx / cosx

	cscx = 1 / sinx
	secx = 1 / cosx
	cotx = 1 / tanx

	asinx = arcsinx = sin^[-1](x) = inverse of sinx
	acosx = arccosx = cos^[-1](x) = inverse of cosx
	atanx = arctanx = tan^[-1](x) = inverse of tanx

	asinx :in: [-pi/2, pi/2]
	acosx :in: [0, pi]
	atanx :in: (-pi/2, pi/2)


Special Values
----------------------------------------

	let vx = root(x)

| x    | sinx | cosx |
| ---- | ---- | ---- |
| 0    | 0    | 1    |
| pi/6 | 1/2  | v3/2 |
| pi/4 | v2/2 | v2/2 |
| pi/3 | v3/2 | 1/2  |
| pi/2 | 1    | 0    |

> TODO: unit circle image


Essential Identities
----------------------------------------

Pythagorean Identities

	(sinx)^2 + (cosx)^2 = 1
	(tanx)^2 + 1 = (secx)^2
	(cotx)^2 + 1 = (cscx)^2

Rotations and Reflections

	angle +/- 2pi = angle

	sin(-x) = -sin(x)
	sin(x + pi) = -sin(x)
	sin(pi - x) = sin(x)

	cos(-x) = cos(x)
	cos(x + pi) = -cos(x)
	cos(pi - x) = -cos(x)

	tan(-x) = -tan(x)
	tan(x + pi) = tan(x)
	tan(pi - x) = -tan(x)

	sin(x + pi/2) = cos(x)
	cos(x + pi/2) = -sin(x)
	1 / tan(x + pi/2) = -tan(x)

Product Identities

	2sinxcosy = sin(x-y) + sin(x+y)
	2cosxcosy = cos(x-y) + cos(x+y)
	2sinxsiny = cos(x-y) - cos(x+y)

Half-Angle Identities

	sin(x/2) = +/- root( (1 - cosx) / 2 )
	cos(x/2) = +/- root( (1 + cosx) / 2 )
		plus/minus by the quadrant
	tan(x/2) = sinx / (1 + cosx) = (1 - cosx) / sinx

Addition Identities

	sin(x + y) = sinxcosy + cosxsiny
	cos(x + y) = cosxcosy - sinxsiny
	tan(x + y) = (tanx + tany) / (1 - tanxtany)


Laws
----------------------------------------

For some triangle with angles ABC and sides abc,
where a is the side opposite A.

The Law of Sines:

	/    a        b        c          \
	:  ------ = ------ = ------ = 2R  :
	\   sinA     sinB     sinC        /

The Law of Cosines:

	aa = bb + cc - 2bc:cos:A

The Law of Tangents:

	/   a - b     tan( (A-B)/2 )   \
	:  ------- = ----------------  :
	\   a + b     tan( (A+B)/2 )   /


Calculus
----------------------------------------

	lim[x->0] sinx / x = 1
	lim[x->0] (cosx - 1) / x = 0

Derivatives

	sin'(x) = cosx
	cos'(x) = -sinx

	tan'(x) = (secx)^2
	sec'(x) = secxtanx

	cot'(x) = -(cscx)^2
	csc'(x) = -cscxcotx

	asin'(x) = 1 / root(1-xx)
	acos'(x) = -1 / root(1-xx)

	atan'(x) = 1 / (1+xx)
	acot'(x) = -1 / (1+xx)
	
	asec'(x) = 1 / ( |x|root(xx-1) )
	acsc'(x) = -1 / ( |x|root(xx-1) )

Antiderivatives (`+C` omitted)

	S(sinx)dx = -cosx
	S(cosx)dx = sinx

	S(tanx)dx = ln|secx| = -ln|cosx|
	S(secx)dx = ln|secx + tanx|

	S(cotx)dx = -ln|cscx| = ln|sinx|
	S(cscx)dx = -ln|cscx + cotx| = ln|cscx - cotx|

	Use IBP for inverse functions.


Hyperbolic Trig
----------------------------------------

	sinh(x) = (1/2)(e^x - e^-x)
	cosh(x) = (1/2)(e^x + e^-x)
	tanh(x) = sinh(x) / cosh(x)

	(sinhx)^2 - (coshx)^2 = 1

	sinh'(x) = coshx
	cosh'(x) = sinhx


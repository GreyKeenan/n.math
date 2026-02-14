Polynomial Tricks Reference Sheet
==================================================

	(x - y)(x + y) = xx - yy
	(x - y)(xx + xy + yy) = xxx - yyy
	(x + y)(xx - xy + yy) = xxx + yyy
	(x - y)(xxx + xxy + xyy + yyy) = xxxx - yyyy
	(x + y)(xxx - xxy + xyy - yyy) = xxxx + yyyy
	...

	/                             -b +/- (b^2 - 4ac)^[1/2]
	: axx + bx + c = 0  <=>  x = --------------------------
	\                                       2a

	xx + (a + b)x + ab = (x + a)(x + b)

	TODO: cubic version

Synthetic Division

	Divide (x - 3) from (3x^3 - 7x^2 - 13x + 21).

	  | x^3| x^2| x^1 | x^0|
	  |----|----|-----|----|
	3 |  3 | -7 | -13 | 21 |
	    ||
	    \/    9     6  -21
	     3    2    -7    0    <--- 0 is the remainder

	(x - 3)(3xx + 2x - 7 + 0/(x - 3))  =  (3x^3 - 7x^2 - 13x + 21)

Factoring shortcuts:

	xx + bx + c = (x + d)(x + z)
	where  d + z = b  and  dz = c

	axx + bx + cx
		a * c = z
		h * k = z  and  h + k = b
	axx + hx + kx - c

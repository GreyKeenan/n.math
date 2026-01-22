Polynomials Cheat-Sheet
========================================

<br>

<!-- INDEX -->
* Quadratics
* The Binomial Theorem

<br>


Quadratics
========================================

Any equation in the form:

	axx + bx + c = 0

Quadratic Equation:

	( -b +/- root(bb - 4ac) ) / (2a)  =  x

Factoring Quadratics

	(x + A)(x + B) = xx + Ax + Bx + AB
	=> xx + bx + c = (x + d)(x + e) where de = c and d + e = b

	(Ax + B)(x + c) = Axx + ACx + Bx + BC
	=> axx + bx + c = (dx + e)(x + f) where ef = c and df + e = b

	(Ax + B)(Cx + D) = ACxx + ADx + CBx + BD
	=> axx + bx + c = (dx + e)(fx + g)
	where dg + cb = b and AC = a and BD = c


The Binomial Theorem
========================================

Pascal's Triangle gives us the constant coefficients when expanding `(x + y)^n`.

Pascal's Triangle

	1
	1  1
	1  2  1
	1  3  3  1
	1  4  6  4  1
	1  5  10 10 5  1
	...

If `n` is the row number (from 0) and `k` is the column number,
then the Choose Function gives is Pascal's Triangle.

The Choose Function

	CHOOSE(n,k) = {
		k <= n : n! / ( k!(n - k)! )
		k > n  : 0
	}
	CHOOSE(n,k) = n(n - 1)(n - 2)...(n - (k-1)) / k!

The Binomial Formula

	(x + y)^n
	== SIGMA[k=0]^(n) CHOOSE(n,k) x^(n-k) y^k
	== SIGMA[k=0]^(n) CHOOSE(n,k) x^k y^(n-k)



Limits Cheat-Sheet
==================================================

	(lim[x->a] f(x) = L) means:
	for every :epsilon: > 0, :delta: exists where:
	if    0 < |x - a| < :delta:
	then  |f(x) - L| < :epsilon


	lim[x->a] x = a
	lim[x->a] c = c   where c is not a function of x

	let f(x) and g(x) be functions of x for which the limits exist

	lim(c * fx) = c * lim(fx)

	lim(fx + gx) = lim(fx) + lim(gx)
	lim(fx * gx) = lim(fx) * lim(gx)
	lim(fx / gx) = lim(fx) / lim(gx); gx != 0

	lim( (fx)^n ) = (lim(fx))^n
	lim( (fx)^[1/n] ) = (lim(fx))^[1/n]
		n :in: {Z_integers}
		n > 0
		if n is even, lim(fx) is assumed to be >= 0

	assuming  f  is continuous at  b:
	if    lim[x->a] g(x) = b
	then  lim[x->a] f(g(x)) = f(b)
	aka   lim[x->a] f(g(x)) = f( lim[x->a] g(x) )

Inequalities

	if    f(x) <= g(x) when x is near (except possibly at) a
	then  lim[x->a] f(x)  <=  lim[x->a] g(x)

	The Squeeze Theorem:
	if    f(x) <= g(x) <= h(x)  for any x
	and   lim(fx) = lim(hx)
	then  lim(gx) = lim(fx)

Infinity Terminology

	"infinite limit" / vertical asymptotes
	lim[x->a] f(x) = +/- :inf:

	"limit at infinity" / horizontal asymptotes
	lim[x-> +/- :inf:] f(x) = a

	"infinite limit at infinity" / not an asymptote
	lim[x-> +/- :inf:] f(x) = +/- :inf:


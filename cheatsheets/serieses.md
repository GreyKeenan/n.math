Serieses Cheat-Sheet
========================================

<br>

<!-- INDEX -->
* [Named Serieses](#named-serieses)
* [Determining General Convergence or Divergence](#determining-general-convergence-or-divergence)
  * [The Divergence Test](#the-divergence-test)
  * [The Alternating Series Test](#the-alternating-series-test)
  * [The Direct Comparison Test](#the-direct-comparison-test)
  * [The Limit Comparison Test](#the-limit-comparison-test)
  * [The Integral Test](#the-integral-test)
  * [The Ratio Test](#the-ratio-test)
  * [The Root Test](#the-root-test)
  * [The Absolute Convergence Test](#the-absolute-convergence-test)
* [Value of Convergence](#value-of-convergence)

<br>

	let Z be capital sigma
	let a_n, b_n be some sequences


Named Serieses
----------------------------------------

Geometric Serieses

* Form: `Zr^n`
* Converges if and only if `|r| < 1`

P-Serieses

* Form: `Zn^[-p]`, `p > 0`
* Converges if and only if `p > 1`.

The Harmonic Series

* Form: `Z(1/n)` (the p-series where p = 1)
* Diverges.


Determining General Convergence or Divergence
----------------------------------------

My Strategy:

1. First consider the Divergence or Alternating Series tests as applicable.
1. (For any remaining alternating series,
  factor out the `(-1)^n` to work with its absolute.)
1. Consider similarity to a geometric series or p-series.
  If so, apply either of the comparison tests.
1. Consider the root test if powers are a complicating factor.
1. Consider the integral test if its conditions have been met
  and integration seems feasible.
1. Consider the ratio test.


### The Divergence Test

	if lim[n->inf] a_n != 0 then Za_n diverges


### The Alternating Series Test

	given a_n > 0 and a_n > a[n+1]

	Za[n](-1)^n  converges if and only if  lim[n->inf] a_n = 0


### The Direct Comparison Test

	given b_n >= a_n >= 0

	if Zb_n converges then Za_n converges
	if Za_n diverges then Zb_n diverges


### The Limit Comparison Test

	given a_n > 0 and b_n > 0
	given 0 < lim[n->inf] (a_n / b_n) < inf

	Za_n and Zb_n will have the same convergence


### The Integral Test

	given f(n) = a_n for every whole-number n
	given f(x) is continuous, positive, and decreasing on x :in: [c, inf)
	where c is some constant and c :in: {integers}

	Za_n converges if and only if S[c]^inf f(x)dx converges


### The Ratio Test

	let L = lim[n->inf] |a[n+1] / a_n|

	if L < 1 then Za_n converges absolutely
	if L > 1 then Za_n diverges


### The Root Test

	let L = lim[n->inf] |a_n|^[1/n]

	if L < 1 then Za_n converges absolutely
	if L > 1 then Za_n diverges


### The Absolute Convergence Test

	if  Z|a_n|  converges then  Za_n  converges


Convergence Value
----------------------------------------

Symbolically
* geometric or p-series
* solve as collapsing

Numerically
* estimation techniques idr

	TODO


The Fundamental Theorem of Calculus
==================================================

> [index](index#the-notes) /
  [calculus](calculus) /
  the fundamental theorem

<br>

<!-- INDEX -->
* About the Fundamental Theorem(s) of Calculus
* Considering the Relationship between Integrals and Derivatives
* The First Theorem
  * Proving the First Theorem
* The Second Theorem
  * Proving the Second Theorem

<br>

	let S be shorthand for the long-S symbol


About the Fundamental Theorem(s) of Calculus
==================================================

Assuming you have a basic understanding of integrals,
you should know that calculating them using summation and limits
is impractical at best, and impossible at worst.
With that in mind, it would sure be nice if we could find some relationship
between integrals and some other concept which makes them easier to compute.
That's where the Fundamental Theorem of Calculus (FTC) comes in.

The Fundamental Theorem of Calculus identifies a key relationship between
[derivatives](derivatives) and [integrals](integrals).
Broadly, the theorem states that the operations are inverse.
It's fine if you don't know what that means yet, but in practice,
one major application of the theorem is to
make the computation of integrals nearly trivial.

> If you aren't comfortable with the concepts of derivative and integrals,
  you should probably check those out before learning this.

First and foremost, let's lay out what the theorem actually is
in order to get a broad idea of what we will be covering.

The FTC is often split into two parts, halves, or even separate theorems.
It doesn't *really* matter; its just a semantic difference
in the way that people explain/discuss the FTC.
The theorems are as follows:

---

#### FTC-1

	let f(t) be continuous on some interval [a, b]

	(d/dx)( S[a]^x f(t)dt ) = f(x)
	x :in: [a, b]


#### FTC-2

	S[a]^b f'(t)dt = f(b) - f(a)

---

Now, before we dive into the proof and algebraic exploration of these theorems,
let's try to build an intuitive understanding of why this relationship
between derivatives and integrals might be the way that it is.


Considering the Relationship between Integrals and Derivatives
==================================================

Let's set up an example of a problem we might be working through.
Say that we have some line `f(x)`,
and we are trying to find the area under it from `a` to `b`.
In other words:

	S[a]^b f(x)dx = ?

> Assume that we can differentiate or antidifferentiate `f` easily.

Thanks to the theorem, we know that we can find some relationship here
between the concepts of derivatives and integrals to solve our problem.

Now, as you hopefully already know,
a derivative is just a slope, and an integral is just an area.
With that in mind, one might think that the slope is clearly relevant
to computing the area.
The slope dictates how the line grows,
and that growth will, of course, influence the area.

Counterintuitively, though,
we don't use the derivative of `f` to find the integral of `f`.
Instead, as the theorem indicates, we use the *antiderivative* of `f`
to find the area under `f`.
Why might that be the case?

	let g(x) be the antiderivative of f(x)

It seems to me that part of the difficulty of conceptualizing the FTC
stems from the difficulty of conceptualizing antiderivatives.
It's easy to think of `f` as `g`'s slope.
`f`, then, tells us the rate of change for `g`.
What does the `g` tell us about `f`, though?

Well, if `f` is `g`'s slope, `g` is the *accumulation* of that slope.
Think about it.
If `g` changes at a rate of `f`, that means that `g` accumulates by `f`.
You could say that `g` is the sum of infintesimal steps of `f`.

You may have noticed that this corresponds to the core idea of integrals.
The integral of `f` is the sum of infinitesimal slices of the area under `f`.
The antiderivative `g`, then, in the same way,
is the accumulation/sum of `f(x)` for each infinitesimal step in `x`.

When we calculate Riemann-Sum-integrals manually,
we add up each slice of the area one-by-one.
`g` is just a function which does this process for us.
We don't have to add up everything along the way,
because `g`'s equation calculates it all.

That concept is what leads into the FTC.
We offload the manual work of summations onto the antiderivative,
\<s> and never ever have to touch summations again ever \</s>.


The First Theorem
==================================================

	let f(t) be continuous on some interval [a, b]

	(d/dx)( S[a]^x f(t)dt ) = f(x)
	x :in: [a, b]

---

> TODO


Proving the First Theorem
--------------------------------------------------

	given f(t) is continuous on [a, b]
	given x :in: (a, b)

	let (x + h) be in (a, b)
	let g(x) = S[a]^x f(t)dt

You're going to want to remember your integral properties for thi.

	g(x + h) - g(x)
	 = S[a]^[x+h] f(t)dt - S[a]^x f(t)dt
	 = S[a]^[x+h] f(t)dt + S[x]^a f(t)dt
	 = S[x]^[x+h] f(t)dt

	g(x + h) - g(x) = S[x]^[x+h] f(t)dt

	h != 0
	/  g(x + h) - g(x)        1    x+h
	: -----------------  =  (---) S   f(t)dt
	\         h               h    x

Let's hold on to that for later.

We know `f` is continuous on `[x, x+h]`,
so by the Extreme Value Theorem,
`u` and `v` exist where `f(u) = absMin` and `f(v) = absMax`
(those being the extreme values *within `[x, x+h]`*.)
Let's call the minimum `m` and maximum `M`.

By our integral properties, then, we know:

	m(x + h - x)  <=  S[x]^[x+h] f(t)dt  <=  M(x + h - x)
	mh  <=  S[x]^[x+h] f(t)dt  <=  Mh
	m  <=  ( S[x]^[x+h] f(t)dt ) / h  <=  M

When dividing by `h`, we assume it is positive here.
The proof holds similarly when `h` is negative.

and with our formula from earlier:

	/            g(x + h) - g(x)
	: f(u)  <=  -----------------  <=  f(v)
	\                  h

Now, we are going to limit-ify all three parts of this.
Since `u` and `v` are in `[x, x+h]`:

	lim[h->0] f(u) = f(x)
	lim[h->0] f(v) = f(x)

and of course, by the derivative definition:

	/            g(x + h) - g(x)
	: lim[h->0] -----------------  =  g'(x)
	\                    h

so:

	f(x) <= g'(x) <= f(x)

and by the Squeeze theorem, we can conclude:

	g'(x) = f(x)

And that there is the proof!

> Note that, when `x = a` or `x = b`,
  we need only modify the limit to be a one-sided limit to maintain the proof.


The Second Theorem
==================================================

	S[a]^b f'(t)dt = f(b) - f(a)

---

> TODO


Proving the Second Theorem
--------------------------------------------------

> We actually sort-of proved this theorem during our proof of the first.
  At some point, we had:
>
> ~~~
> g(x + h) - g(x) = S[x]^[x+h] f(t)dt
> ~~~
>
> We can show this in a more straightforward way, though.

	given f'(t) is continuous on [a, b]
	given x :in: (a, b)

	let g(x) = S[a]^x f'(t)dt

Let `f` be any general antiderivative.
Using the first part of the theorem, we can define that as:

	f(x) = g(x) + C

Next:

	g(a) = S[a]^a f'(t)dt = 0

and so:

	f(b) - f(a)
	 = g(b) + C - g(a) - C
	 = g(b)
	 = S[a]^b f'(t)dt

	S[a]^b f'(t)dt = f(b) - f(a)

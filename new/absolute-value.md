Absolute Value
==================================================

Absolute value is simple once you know how it works,
but its unintuitive nature can trip you up.

First, notation.
We denote absolute value using vertical bars.

	|x|  is the absolute value of x

But what is absolute value?
Well, the absolute value of a number
is simply its distance from zero on a number line.

	|4| = 4
	|1050| = 1050
	|-1| = 1
	|-78| = 78

So, in practice, absolute-value strips a number of its sign or negative symbol.
It is useful to think of it in the former terms, though,
when considering its relation to other concepts like higher-D-distance.
`TODO link`

---

Alright.
That seems pretty simple, then.
How can it trip you up?
Well, the unintuitive part comes
when you don't know the sign of the value you are taking the asbolute of.

	|x| = ?

You might think that `|x| = x`, but that is not necessarily the case.
What if `x` is negative?
Then, you would be saying that `|x|` equals a negative value,
which is clearly against the concept of absolute value.

We actually have to consider two cases:
If `x` is positive, the result will just be `x`.
If `x` is *negative*, however, the result will be `-x`.
Why? Consider:

	| 1| = 1
	|-1| = -(-1) = 1
	|-5| = -(-5) = 5

So, `|x|` is `x` *or* `-x`, depending on the sign of `x`.
It can be useful to denote this using function notation:

	|x| = abs(x) = {
		 x  if x >= 0
		-x  if x <  0
	}

When we know the sign of `x`, we can account for it accordingly.
When we *don't* know the sign of `x`,
we have to create two branches of the equation to handle each case.


A simple example
--------------------------------------------------

Let's consider a simple example.

	|x| = 7
	x = ?

It is tempting to just say that `x = 7`, but that is only partially true.

	when x is positive  |x| = x
	so:
	x = 7

	when x is negative  |x| = -x
	so:
	-x = 7
	x = -7

	x = -7 or x = 7

... and this makes since when you consider:

	|-7| = |7| = 7

As you can see, we had to create *two cases* to resolve the absolute value.
If we knew beforehand that `x` is always positive,
such as with certain geometric values, we could ignore the negative case.
However, when we don't know, we have to consider both.

It may seem incredibly easy in this simplistic case,
but it can be a little more obscured at times.


A slightly more complex example
--------------------------------------------------

	sqrt(49xx) + 5x = 60
	x = ?

First, we can factor out `49` from the radical.

	7sqrt(xx) + 5x = 60

Now, remember that `sqrt(z^2) = |z|`.
Otherwise, it could theoretically output `z` or `-z`, given `(-z)^2 = z^2`.

	7sqrt(xx) + 5x = 60
	7|x| + 5x = 60

Next, we consider both cases, just like in the simple example.

	when x is positive:
	7(x) + 5x = 60
	12x = 60
	x = 5

	check:
	sqrt(49(5)^2) + 5x
	7|5| + 5(5)
	35 + 25
	60

>

	when x is negative:
	7(-x) + 5x = 60
	-2x = 60
	x = -30

	check:
	sqrt(49(-30)^2) + 5x
	7|-30| + 5(-30)
	210 - 150
	60

So, `x` can be `-30` or `5`, and once again,
we had to create multiple branches of the equation to solve it completely.

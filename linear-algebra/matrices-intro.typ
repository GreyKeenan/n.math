#import "universal.typ":*

#let vV = $arrow(v)$
#let uV = $arrow(u)$
#let wV = $arrow(w)$

#let ih = $hat(i)$
#let jh = $hat(j)$
#let kh = $hat(k)$


= What's the Deal with Matrices?

So, datastructures.
By now, hopefully we're familiar with scalars and vectors.
Scalars themselves are a 0d point,
and they can describe 1d space. The number line.
Vectors themselves are 1d lists of scalars,
and they can describe 2d+ space. Graphs.

But vectors are datastructures which contain other datastructures.
It's a storage type which stores scalars.
What would happen if we had a vector containing other vectors, though?
(Strictly speaking, we aren't allowed to do this.
Imagine for a moment, though, that we could.)

$
	vV = a ih + b jh = [ a, b ]
	\
	uV = [ c, d]
	\
	wV = [ vV, uV ] = [[a,b],[c,d]] approx mat(a,b;c,d) "or" mat(a,c;b,d)
$

Essentially, what we would have is some 2d collection of scalars.
An _area_ of scalars instead of a _line_.
Rather than an $n$d vector, we have something like an $(m by n)"d"$ vector.

Well, we don't call it a vector.
Instead, we call it a matrix.

A #term[matrix] is just another type of datastructure,
to borrow terminology from computer science.
We can represent information using scalars,
we can represent it using vectors,
and we can represent it using matrices.
Consequently, each of those tools have
many associated applications and techniques.
Here, we're going to learn about the ones associated with matrices.

(Aside: To extend the analogy further,
we could also have matrices of matrices and so forth.
3d+ storage structures.
But that's beyond the scope of this document.)

---

#TODO important to think of as separate from vectors too

Now, just as we can represent a scalar using a 1d vector,
we can represent vectors as $1 by n$ or $n by 1$ matrices.

$
	vV = a ih + b jh + c kh = mat(a;b;c) = mat(a,b,c)
$

#TODO col & row vectors

#TODO describe 1d, describe 2d and beyond, describe what?
Describe system of scalars, describe system of vectors.
Cross product is a matrix thing.

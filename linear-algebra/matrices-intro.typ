#import "universal.typ":*

#let vV = $arrow(v)$
#let uV = $arrow(u)$
#let wV = $arrow(w)$

#let ih = $hat(i)$
#let jh = $hat(j)$
#let kh = $hat(k)$


= An Introduction to Matrices

So, datastructures.
By now, hopefully we're familiar with scalars and vectors.
Scalars themselves have no dimension,
and they can describe 1d values. The number line.
Vectors themselves are one dimensional,
and they can describe 2d+ values. Graphs.

But vectors are a datastructure which contains another datastructure.
Its a storage type which stores scalars.
What would happen if we had a vector containing other vectors, though?
(Strictly speaking, we can't do this with vectors.
Imagine for a moment, though, that we could.)

$
	vV = a ih + b jh = [ a, b ]
	\
	uV = [ c, d]
	\
	wV = [ vV, uV ] = [[a,b],[c,d]] approx mat(a,b;c,d) "or" mat(a,c;b,d)
$

Essentially, what we would have is a vector which is itself
two-dimensional, regardless of the dimensionality of its data.
Rather than a 2d vector, we have something like a 2 $by$ 2d vector.

Well, we don't call it a vector.
Vectors contain scalars; not other vectors.
Instead, we call it a matrix.

A #term[matrix] is just another type of datastructure,
to borrow terminology from computer science.
We can represent information using scalars,
we can represent it using vectors,
and we can represent it using matrices.
Each of those tools have many associated applications and techniques.

(To extend the analogy further,
we could also have matrices of matrices and so forth.
But that's beyond the scope of this document here.)

---

#TODO important to think of as separate from vectors too

Now, just as we can represent a scalar using a 1d vector,
we can represent vectors as $1 by n$ or $n by 1$ matrices.

$
	vV = a ih + b jh + c kh = mat(a;b;c) = mat(a,b,c)
$

#TODO where am I going with this

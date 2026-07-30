#import "universal.typ":*

#let AA = $bold(A)$
#let BB = $bold(B)$

= The Determinant

$
	LET AA "be any" #underline($"square"$) "matrix"
	\
	"determinant of" AA = det(AA) = |AA| = matd(a,b,c;d,e,f;g,h,i)
$

The #term[determinant] is to a matrix as the magnitude is to a vector.
It is a scalar which represents, in some sense, the "size" of the matrix.
Consider:

$
	|C AA| = C|AA|
	\
	|AA BB| = |AA| |BB|
$

Where the magnitude of a vector is its length, or its 1d size,
the determinant of an $n by n$ matrix is the $n$d hypervolume
whose boundaries are described by the matrix's row or column vectors.
Good luck visualizing that.

Consider, consequently, why the matrix must be square.
In order to have enough dimensionality
for each row/column to create boundaries for an $n$d space,
they must have $n$ components.

The major difference, though,
is that the determinant may be positive or negative.
(#TODO meaning of that)

#TODO other implications, collinearity

Unfortunately, computing determinants is harder than magnitudes.
We define the process recursively.
First, the "base cases" are the trivial determinants of
$1 by 1$ and $2 by 2$ matrices:

$
	|mat(a)| = a
	\
	matd(a,b;c,d) = a d - c b
$

To remember the $2 by 2$ matrix, consider that
we just multiplied across the diagonals and subtracted the terms.

I will present the $3 by 3$ and $4 by 4$ determinants
before explaining the process below.

$
	matd(a,b,c;d,e,f;g,h,i) = a matd(e,f;h,i) - b matd(d,f;g,i) + c matd(d,e;g,h)
	\
	matd(a,b,c,d;e,f,g,h;i,j,k,l;m,n,o,p)
	= a matd(f,g,h;j,k,l;n,o,p)
	- b matd(e,g,h;i,k,l;m,o,p)
	+ c matd(e,f,h;i,j,l;m,n,p)
	- d matd(e,f,g;i,j,k;m,n,o)
$

#tech
Now, to compute the determinant:
0. We are given some $n times n$ matrix and asked to find its determinant,
  where $n >= 3$.
+ Pick some row or column as our top-level scalar multipliers.
  (In the examples above, the first row (abcd) was chosen both times.
  We could have just as easily picked efgh or cgko.)
  We will iterate through that row/column.
+ Each item in that row/column corresponds to a term in the output.
  The term consists of that item multiplied by
  the determinant of the $(n-1) times (n-1)$ matrix
  formed by omitting that item's row and column.
+ Select the correct sign for the term according to the checkerboard $plus.minus$ pattern explained below.
+ Repeat for each item in the initially selected row/column.
+ We now have a problem involving $(n-1) times (n-1)$ matrices.
  Repeat until we have $2 by 2$ matrices which
  we can resolve with the known formula.

#TODO better visuals

The checkerboard pattern is demonstrated:

$
	mat(
		+, -, +;
		-, +, -;
		+, -, +;
	)
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	mat(
		+, -, +, -;
		-, +, -, +;
		+, -, +, -;
		-, +, -, +;
	)
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	space.nobreak
	mat(
		+, -, +, -, +;
		-, +, -, +, -;
		+, -, +, -, +;
		-, +, -, +, -;
		+, -, +, -, +;
	)
$

#tech
Consider that, since we can select any row/column as our starting point,
it is advantageous to select that row/column which contains the most zeroes,
since we know a zero's corresponding term will zero-out.



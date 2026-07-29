#import "universal.typ":*

#let AA = $bold(A)$
#let BB = $bold(B)$

= The Determinant

$
	LET AA "be any" #underline($"square"$) "matrix"
	\
	"determinant of" AA = det(AA) = |AA| = matd(a,b,...;c,d;...)
$

The #term[determinant] of a matrix is like the its "magnitude",
borrowing the concept from vectors.
It's a little harder to visualize, though,
since matrices are multidimensional compared to a vector's 1d shape.
Consider, though:

$
	|C AA| = C|AA|
	\
	|AA BB| = |AA| |BB|
$

Note, also, that only square matrices have determinants.

Unfortunately, computing determinants is harder than vector-magnitudes.
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


== Implications of the Determinant #TODO

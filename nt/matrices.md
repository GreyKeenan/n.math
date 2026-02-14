Matrices
==================================================

<br>

<!-- INDEX -->
* Multiplication

* References

<br>


Multiplication
==================================================

Matrix multiplication makes sense when you go through the process.
Essentially its just another way or syntax to represent two
formulas which share variables, by conceptualizing them as 2d.

When multiplying matrix A by matrix B,
the width of A must equal the height of B.
Otherwise, multiplication is not possible.
The resulting matrix will have
the width of B and the height of A.

Notice that matrix multiplication is not commutative.
I feel like it shouldnt be named "multiplicaton" then.

~~~
/ (A, B)(a) == (Aa + Bb)
\ (C, D)(b) == (Ca + Db)

/ (A, B)(a, b) == (Aa + Bc, Ab + Bd)
\ (C, D)(c, d) == (Ca + Dc, Cb + Dd)

/ (a, b)(A, B) == (aA + bC, aB + bD) != (A, B)(a, b)
\ (c, d)(C, D) == (cA + dC, cB + dD) != (C, D)(c, d)

/ (A, B)(a, c) == (Aa + Bb, Ac + Bd)
\ (C, D)(b, d) == (Ca + Db, Cc + Dd)

/ (A, B)(a) == (Aa + Bb)
: (C, D)(b) == (Ca + Db)
\ (E, F)    == (Ea + Fb)

/ (A, B)(a, b, c) == (Aa + Bd, Ab + Be, Ac + Bf)
: (C, D)(d, e, f) == (Ca + Dd, Cb + De, Cc + Df)
\ (E, F)          == (Ea + Fd, Eb + Fe, Ec + Ff)
~~~



References
==================================================

[^1]: https://youtu.be/cc1ivDlZ71U

Why do we multiply matrices the way that we do?? \
@MichaelPennMath
<https://youtu.be/cc1ivDlZ71U>

> goes through rationale for *why* it works this way.

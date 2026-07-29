#import "universal.typ":*

#let Aa = $bold(A)$
#let Bb = $bold(B)$

= The Transpose #TODO

$
	"let" Aa "be any matrix"
	\
	"transpose of" Aa = Aa^T
	\
	"if" Bb = mat(a,b;c,d;e,f)
	"then" Bb^T = mat(a,c,e;b,d,f)
	\
	(Aa^T)^T = Aa
$



#TODO symmetric, skew symmetric

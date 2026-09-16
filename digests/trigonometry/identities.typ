#import "utilities.typ":*

#let productToSum = [
	=== Product-to-Sum Formulas
	#figl(alt:"
		Sine theta sine phi equals one half cosine of theta minus phi minus cosine of theta plus phi.
		Cosine theta cosine phi equals one half cosine of theta minus phi plus cosine of theta plus phi.
		Sine theta cosine phi equals one half sine of theta minus phi plus sine of theta plus phi.
	")[$sin(theta)sin(phi) = 1/2( cos(theta - phi) - cos(theta + phi) )
	\ cos(theta)cos(phi) = 1/2( cos(theta - phi) + cos(theta + phi) )
	\ sin(theta)cos(phi) = 1/2( sin(theta - phi) + sin(theta + phi) )
	$]
]

#let sum = [
	=== Sum Identities
	#figl(alt:"
		Sine of theta plus phi equals sine theta cosine phi plus cosine theta sine phi.
		Cosine of theta plus phi equals cosine theta cosine phi minus sine theta sine phi.
		Tangent of theta plus phi equals tangent theta plus tangent phi over one minus tangent theta tangent phi.
	")[$sin(theta + phi) = sin(theta)cos(phi)+cos(theta)sin(phi)
	\ cos(theta + phi) = cos(theta)cos(phi)- sin(theta)sin(phi)
	\ tan(theta + phi) = ( tan theta + tan phi )/( 1 - tan(theta)tan(phi))
	$]
]

/*
#let power = [
	=== Power Reduction Formulas
	$sin^2(theta) = 1/2(1 - cos(2theta))
	\ cos^2(theta) = 1/2(1 + cos(2theta))
	\ sin theta cos theta = 1/2 sin(2theta)
	$
]
*/

#let doubleAngle = [
	=== Double Angle Identities
	#figl(alt:"
		Sine of two theta equals two times sine theta cosine theta.
		Cosine of two theta equals cosine squared theta minus sine squared theta.
		Tangent of two theta equals two tangent theta over one minus tangent squared theta.
	")[$sin(2theta) = 2 sin theta cos theta
	\ cos(2theta) = cos^2(theta) - sin^2(theta)
	\ tan(2theta) = (2tan theta) / ( 1 - tan^2(theta))
	$]
]

#let halfAngle = [
	=== Half Angle Identities
	#figl(alt:"
		Sine of theta over two equals plus or minus the square root of one minus cosine theta over two.
		Cosine of theta over two equals plus or minus the saure root of one plus cosine theta over two.
		Tangent of theta over two equals sine theta over one plus cosine theta equals one minus cosine theta over sine theta.
	")[$sin(theta/2) = plus.minus sqrt((1 - cos theta)/2)
	\ cos(theta/2) = plus.minus sqrt((1 + cos theta)/2)
	\ tan(theta/2) = (sin theta) / ( 1 + cos theta ) = (1 - cos theta) / (sin theta)
	$]
]

#let sumToProduct = [
	=== Sum-to-Product Formulas
	#figl(alt:"
		Sine theta plus sine phi equals two sine of theta plus phi over two times cosine theta minus phi over two.
		Cosine theta plus cosine phi equals two cosine of theta plus phi over two times cosine theta minus phi over two.
		Cosine theta minus cosine phi equals negative two sine of theta plus phi over two times sin of theta minus phi over two.
	")[$sin theta + sin phi = 2sin((theta + phi)/2)cos((theta - phi)/2)
	\ cos theta + cos phi = 2cos((theta + phi)/2)cos((theta - phi)/2)
	\ cos theta - cos phi = -2sin((theta + phi)/2)sin((theta - phi)/2)
	$]
]

#let pythagorean = [
	=== Pythagorean Identities

	#figl(alt:"
		Ay squared plus bee squared equals see squared, which implies that cosine squared theta plus sine squared theta equals 1.
	")[ $aa^2 + bb^2 = cc^2 space.nobreak => space.nobreak cos^2(theta) + sin^2(theta) = 1$ ]

	#figl(alt:"
		One plus tangent squared theta equals secant squared theta.
		Cotangent squared theta plus one equals cosecant squared theta.
	")[
	#block(width:90%, grid(
		columns:(1fr, 1fr),
		align(left+horizon,
			$1 + tan^2(theta) = sec^2(theta)
			//\ cot^2(theta) + 1 = csc^2(theta)
		$),
		align(left+horizon,
			//$cos theta = plus.minus sqrt( 1 - sin^2(theta) )
			//\ sin theta = plus.minus sqrt( 1 - cos^2(theta) )
			$cot^2(theta) + 1 = csc^2(theta)
		$),
	))
	]
]

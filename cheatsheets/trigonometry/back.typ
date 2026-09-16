#import "utilities.typ": *
#import "back_triangle.typ": triangle
#import "back_waves.typ": wave_hshift, wave_vshift
#import "back_polar.typ": polar
#import "calculus.typ"
#import "spherical_diagram.typ" as sphere
#import "cylindrical_diagram.typ" as cylinder

#let lawOfSines = figl(
	alt:"Ay over sine alpha equals bee over sine beta equals see over sine gamma equals ay bee see over two times area."
)[$aa/(sin(AA)) = bb/(sin(BB)) = cc/(sin(CC)) = (aa bb cc) / (2 times"area")$]
#let lawOfSines_circumradius = $aa/(sin(AA)) = bb/(sin(BB)) = cc/(sin(CC)) = 2 r = (aa bb cc) / (2 times"area")$

#let lawOfCosines = figl(
	alt:"Ay squared equals bee squared plus see squared minus two bee see cosine alpha."
)[$aa^2 = bb^2 + cc^2 - 2bb cc cos(AA)$]
#let lawOfTangents = figl(
	alt:"Ay minus bee over ay plus bee equals tangent of alpha minus beta over two over tangent of alpha plus beta over two."
)[$(aa-bb)/(aa+bb) = tan((AA-BB)/2) / tan((AA+BB)/2)$]



#let page = [

#grid(columns:(50%, 50%), rows:(auto), inset:4pt,// fill:gray,
	//stroke: (x,y) => if x == 0 {(right:gray)},

	[

		#grid(columns:2,
			inset:4pt,
			figure(
				alt:"Any triangle with sides ay, bee, see and angles alpha, beta, gamma.
				Alpha plus beta plus gamma equals 180 degrees.
				"
			)[
				#triangle
				$\
				AA + BB + CC = 180^DEG
				$
			],

			align(left)[

				=== The Law of Sines
				#lawOfSines

				=== The Law of Cosines
				#lawOfCosines

				=== The Law of Tangents
				#lawOfTangents

			]
		)

		#let redx = text(fill:red, $x$)
		#let bluey = text(fill:blue, $y$)
		#figure(
			alt:"
				Polar coordinates.
				Ex equals are cosine theta.
				Why equals are sine theta.
				Are equals the square root of ex square plus why squared.
				Theta equals arctangent of why over ex.

				A radial grid graphing the point are theta.
			"
		)[#grid(
			columns:(4fr, 6fr),
			//inset:4pt,
			//fill:gray,
			align:center+horizon,

			abox(left)[
				=== Polar Coordinates
				$redx = r cos theta
				\ bluey = r sin theta
				\ r = sqrt( redx^2 + bluey^2 )
				\ theta = arctan( bluey/redx )
				$
			],
			polar,
		)]



	],


	[

		#figure( alt:"
			Waves.
			To the left, a wave form and its horizontally-shifted aych counterpart.
			To the right, the wave form and its vertically-shifted kay counterpart.
			The amplitude Ay is the height of the wave from its middle line.
			The period is the horizontal distance between two peaks.

			Ef of ex equals ay sine of omega ex minus phi plus kay = ay sine of omega times ex minus aych plus kay.

			Ay equals amplitude.
			Omega equals angular frequency.
			Period equals two pi over omega equals one over frequency.
			Frequency equals omega over two pi equals one over period.
			Phi equals omega aych equals phase shift.
			Aych equals phi over omega equals horizontal shift.
			Kay equals vertical shift.
		")[
			#align(center)[=== Waves]
			#grid(
				columns:(50%, 50%),
				align:center,
				wave_hshift,
				wave_vshift,
			)
			#align(center, box(/*stroke:1pt, radius:3pt, */inset:6pt, [
				$f(x) =
				A sin( omega x - #text(fill:red, $phi$) ) + #text(fill:blue, $k$)
				=
				A sin(omega(x - #text(fill:red, $h$))) + #text(fill:blue, $k$)
				$
			]))

			#let redh = text(fill:red, $h$)
			#let redphi = text(fill:red, $phi$)
			#grid(columns:(50%, 50%), inset:4pt,
				aabox(center, left, [
					$A = "amplitude"
					\ omega = "angular frequency"
					\ "period" = (2pi)/omega = 1/"frequency"
					\ "frequency" = omega/(2pi) = 1/"period"
					$
				]),
				aabox(center, left, [
					$redphi = omega redh = #text(fill:red, $"phase shift"$)
					\ redh = redphi/omega= #text(fill:red, $"horizontal shift"$)
					\ #text(fill:blue, $k$) = #text(fill:blue, $"vertical shift"$)
					$
				]),
			)
		]

		#aabox(center,left)[
			=== Polar Coordinates and the Complex Plane
			#figl(alt:"
				Ex plus eye why equals are times cosine theta plus eye sine theta.
				ee to the eye theta equals cosine theta plus eye sine theta.
				for any integer en, are times cosine theta plus eye sine theta to the en equals are to the en times cosine en theta plus eye sine en theta.
			")[$x + i y
			= r(cos theta + i sin theta)
			\ e^(i theta) = cos theta + i sin theta
			//= r e^(i theta)
			\ "for any integer" n:
			\ (r(cos theta + i sin theta))^n = r^n (cos(n theta) + i sin (n theta))
			$]
		]

	]
)

#v(-1em)
#grid( // calc section heading
	columns:(1fr,auto,7fr),
	align:center+horizon,
	line(stroke:gray, length:100%),
	//[= Calculus-Related Trigonometry],
	//[= Trigonometry in Calculus I, II, & III],
	[= Trigonometry in Calculus],
	//[= Calculus],
	line(stroke:gray, length:100%),
)

#aabox(center, left, grid(
	columns:(auto, auto, auto),
	//fill:silver,
	inset:(right:16pt, top:8pt),
	align(left)[
		#calculus.allderivatives
		#calculus.antiderivatives
		#calculus.taylors
	],
	aabox(center, left)[
		#calculus.substitutions
		#calculus.hyperbolic
		#calculus.cylindrical
		#calculus.spherical
	],
	align(left)[
		#calculus.multiplied
		//#v(0em)
		#figl(cylinder.main, alt:"The point are theta zee. An angle theta in the ex why plane, a radial distance are in the ex why plane, a distance zee in the zee direction.")
		#v(-2em)
		#figl(sphere.main, alt:"The point rho theta phi. An angle theta in the ex why plane. A radial distance rho. An angle phi between rho and the zee axis.")
	],
))





] // encloses entire page

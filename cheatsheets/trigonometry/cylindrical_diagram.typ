#import "utilities.typ":*

#let rt = text(fill:red, $theta$)

// camera
#let N = (-3, -1, -1)
// N is the POV plane
// Assumed to always be in the triple negative octant.
#let Ni = unit( cross(N, (0, 0, 1)) )
#if (Ni.at(0) > 0) { Ni = scale(Ni, -1) } // x axis on right or left
#let Nj = unit( cross(Ni, N) ) // ensures z points up
#if (Nj.at(2) < 0) { Nj = scale(Nj, -1) }
#let flatten(v) = {
	let r = project(v, N)
	return ( dot(r, Ni), dot(r, Nj) )
}

#let i_N = flatten((1,0,0))
#let j_N = flatten((0,1,0))
#let k_N = flatten((0,0,1))


#let r = 0.7
#let tdeg = 55
#let z = 0.7

#let t = tdeg * calc.pi/180
#let x = r*calc.cos(t)
#let y = r*calc.sin(t)

#let v = ( x, y, z )
#let v_N = flatten(v)

#let u(t) = (r*calc.cos(t), r*calc.sin(t), 0)
//#let u(t) = scale( (calc.cos(t), r*calc.sin(t), 0), r)
#let u_N(t) = flatten(u(t))

// ===========

#let s = 60%

// where origin is placed
#let cx = 30%
#let cy = 73%

#let draw(p, start:(0, 0), stroke:black) = place(line(
	start:(start.at(0)*s + cx, cy - start.at(1)*s),
	end:(cx + p.at(0)*s, cy - p.at(1)*s),
	stroke:stroke
))
#let label(p, l, offset:(-0.25em, 0.5em)) = place(
	dx: cx + p.at(0)*s + offset.at(0),
	dy: cy - p.at(1)*s - offset.at(1),
	l,
)
#let pt(p, r:2pt, fill:black) = place(
	dx: cx + p.at(0)*s - r,
	dy: cy - p.at(1)*s - r,
	circle(radius:r, fill:fill)
)


#let main = square(size:100pt, stroke:none)[

	// axes
	#draw(i_N, stroke:gray)
	#draw(j_N, stroke:gray)
	#draw(k_N, stroke:gray)
	#let ll = 1.1
	#label(
		flatten((ll*1.2, 0, 0)),
		$x$,
	)
	#label(
		flatten((0, ll, 0)),
		$y$,
	)
	#label(
		flatten((0, 0, ll)),
		$z$,
	)

	// vertical line
	#draw( v_N, start:flatten((x,y,0)),
		//stroke:(paint:gray, thickness:0.5pt, dash:"dashed")
	)
	#let S = 1.3
	#label(
		flatten( (x*S, y*S, z/1.5) ),
		$z$,
	)

	// line in xy plane
	#draw( flatten((x,y,0)) )
	#label(
		flatten( (x/3, y/3, z/6) ),
		$r$,
	)

	// point
	#pt( v_N )
	#label(
		flatten( ( x, y, z) ),
		$( r, rt, z )$,
		offset:(0em, 1em),
	)
	
	#{
		let i = 0
		while i <= tdeg {
			i += 1
			draw(
				u_N(i * calc.pi/180),
				start: u_N( (i - 1) * calc.pi/180 ),
				stroke:(paint:red, thickness:0.5pt),
			)
		}
	}
	#let R = r * 1.7
	#let tv = (R*calc.cos(t/2), R*calc.sin(t/2), 0)
	#label( flatten(tv), text(fill:red, $theta$) )

]

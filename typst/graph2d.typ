#import "vector.typ" as vec

#let view(
	frame:(100%, 100%),
	offset:(0pt, 0pt),
	x:(-5, 5),
	y:auto,
) = {

	if y == auto { y = (x.at(0), x.at(1)) }

	let width = x.at(1) - x.at(0)
	let height = y.at(1) - y.at(0)
	if (width <= 0 or height <= 0) { panic("invalid width/height") }

	let origin = (
		x:calc.abs(x.at(0)) / width * frame.at(0) + offset.at(0),
		y:calc.abs(y.at(1)) / height * frame.at(1) + offset.at(1),
	)

	let scale = (
		x:frame.at(0) / width,
		y:- frame.at(1) / height,
	)

	frame = (
		x:frame.at(0),
		y:frame.at(1),
		x0:origin.x - calc.abs(x.at(0)) * scale.x,
		x1:origin.x + calc.abs(x.at(1)) * scale.x,
		y0:origin.y - calc.abs(y.at(1)) * scale.y,
		y1:origin.y + calc.abs(y.at(0)) * scale.y,
	)

	return (
		frame:frame,
		x:x,
		x0:x.at(0),
		x1:x.at(1),
		y:y,
		y0:y.at(0),
		y1:y.at(1),

		width:width,
		height:height,
		origin:origin,
		scale:scale,
	)
}


#let connect(view, p1, p2, stroke:black) = {
	place(line(
		start:(
			view.origin.x + p1.at(0) * view.scale.x,
			view.origin.y + p1.at(1) * view.scale.y,
		),
		end:(
			view.origin.x + p2.at(0) * view.scale.x,
			view.origin.y + p2.at(1) * view.scale.y,
		),
		stroke:stroke,
	))
}

#let polygon(view, points, stroke:black) = {
	let i = 1
	while i < points.len() {
		connect(view, points.at(i - 1), points.at(i), stroke:stroke)
		i += 1
	}
	connect(view, points.at(-1), points.at(0), stroke:stroke)
	//TODO: vertices
}

#let plot() = {} // TODO

#let drawGrid(view, steps:1, axes:gray, gridlines:silver+0.5pt) = {
	if type(steps) != array { steps = (steps, steps) }
	if gridlines != none {
		let i = view.x0
		while i <= view.x1 {
			connect(view,
				(i, view.y0),
				(i, view.y1),
				stroke:gridlines,
			)
			i += steps.at(0)
		}
		let j = view.y0
		while j <= view.y1 {
			connect(view,
				(view.x0, j), (view.x1, j),
				stroke:gridlines,
			)
			j += steps.at(1)
		}
	}
	connect(view, (view.x0, 0), (view.x1, 0), stroke:axes)
	connect(view, (0, view.y0), (0, view.y1), stroke:axes)
}

#let drawCurve(view, f, interval:auto, steps:auto, skip:0, stroke:black) = {
	if interval == auto { interval = (view.x0, view.x1) }
	if steps == auto { steps = 10 + (interval.at(1) - interval.at(0)) * 3 }
	if interval.at(0) >= interval.at(1) { panic("invalid interval") }
	if skip < 0 or skip >= 1 { panic("invalid skip") }
	let x = interval.at(0)
	let X = interval.at(1)
	if x < view.x0 { x = view.x0 }
	if X > view.x1 { X = view.x1 }
	let step = (X - x)/steps
	let visible = step * (1 - skip)
	while x < X {
		let x2 = x + visible
		if x2 > X { x2 = X }
		connect(view,
			(x, f(x)),
			(x2, f(x2)),
			stroke:stroke,
		)
		x += step
	}
}

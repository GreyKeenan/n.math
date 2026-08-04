
#import "utils/vector.typ" as vec
#import "utils/graph2d.typ" as g2
#import "utils/graph3d.typ" as g3

#let TODO = highlight(fill:orange, `(TODO)`)
#let tech = highlight(fill:lime, `(technique)`)
#let term(t) = [#highlight(fill:aqua, `(term)`) #highlight(fill:aqua, t)]
#let terminology = highlight(fill:aqua, `terminology`)

#let hinc(f, h:0) = context {
	set heading(offset:heading.offset + h)
	include f + ".typ"
}

#let th = $"th"$
#let by = math.times
#let del = $partial$

#let al = $chevron.l$
#let ar = $chevron.r$

#let nd = $n"d"$

#let matd(..arr) = $mat(delim:"|", ..arr)$

#set page(
	paper: "us-letter",
	margin: (x:0.3in, y:0.3in),
)
#set text(
	//font: "",
	size:12pt,
)
#set par(
	//justify: true,
	leading: 0.52em,
)

#import "front.typ" as front
#import "back.typ" as back

#front.page
#pagebreak()
#back.page

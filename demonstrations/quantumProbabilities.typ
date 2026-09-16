
#set document( title:[Quantum Probabilities Demonstration] )

#import "@preview/tdtr:0.6.1" : tidy-tree-graph

#let tree(t) = align(center, tidy-tree-graph(
	node-inset:0.75em,
	compact:true,
	spacing:(0.5em, 1em),
	t
))

#title()

The intent of this demonstration is
to build a very basic understanding
of the behavior associated with quantum physics.
We will do that by first laying out a couple tangible scenarios
which demonstrate the problem at hand,
and then exploring one of the mathematical models
that has been found to accurately predict
phsyical behaviors of this nature.
Hopefully, this will be accessible enough
for a layman to follow along.

To be clear, we are not attempting to explain
*why* the phsyics works the way it does,
but merely to understand and build some intuition for
the patterns of behavior that have been observed through experimentation.

This exercise was not designed by me.
My instructor, Professor TODO GET NAME at the UMN,
went through a similar one with my class at the beginning of the semester.
I have only modified the setup slightly.
Any credit goes to him or whomever he got this from.


= The Double-Slit Experiment

The Double-Slit Experiment is a famous scenario
which captures the essence of the what quantum mechanics is all about.
So, before doing any math,
let's lay out the problem/question that
we are trying to answer.

As an alternative or aide to this section,
the video linked here has a good, albeit silly, explanation:
- https://youtu.be/NvzSLByrw4Q?is=dTBflrJvFzQIkhK2

Imagine that you have a wall with two holes in it.
On one side of the wall is
a guy with a paintball gun pointed at the holes.
When he fires, some of the paintballs hit the wall,
but some go through either hole.
When they do, they hit a second wall on the other side
so that we can see their path.

#align(center, image("balls_double.jpg", height:15em))

As we'd expect, the shape of the splattered paint would
mimic the shape of the holes the balls passed through.

Now, the room is filled with water.
If we replace the paintball man with a wave machine,
what pattern would the waves make as they pass through the holes,
across the other side of the room, and hit the far wall?

#align(center, image("water.jpg", height:15em))

After passing through the two holes,
the wave will be split into two waves.
As those two waves overlap each other,
they will "interfere" and create areas
with consistently stronger waves than others.

In the image above, the highlights on the far wall
indicate spots where the waves are stronger.
We can see that the waves, then,
do not really trace the shape of the holes
in the same way that the paintballs did.

Hopefully none of this is particulary surprising yet.
Waves and matter appear to behave differently.
But do they?

Remove the water and put the paintball gun back.
Let's replace the paintballs in the gun with electrons,
ultra-microscopic bits of matter.
Similarly, lets make the holes sufficiently smaller
to fit our smaller projectiles.
After firing the gun now, we would *not* see a pattern
similar to the one with the paintballs.
Instead, the electrons would be distributed across
the back wall, concentrated in the same places where
the equivalent wave is strongest.
That is to say, the pattern of electrons hitting the far wall
would look like the lights in the second image,
rather than the splatter from the first.

This is true even when a single electron is fired at a time,
which implies that it's not due to them colliding with each other.
How could this be, then?
Why would matter appear to act like a wave
and interfere with, well, itself?

It gets weirder.
In an attempt to figure out what was going on,
scientists used a measuring device to track
which hole an individual electron passed through.
When they did, *the electrons behaved like the paintballs*.
Let me say that again.
Checking which hole the electron went through changed its behavior.
Observing the electron caused it to
behave like matter rather than like a wave.
Observing the electron prevented it from interfering with itself.

This is, of course, really strange and unintuitive.
But there's no reason to assume that our intuition should be universal.
It demonstrates how the "laws of the universe"
are much deeper than we reach with our human senses.
But this isn't about philosophy, so let's get back on topic.


= A Mathematical Model

#let r2 = $sqrt(2)$

The scenario above suggests that
our classical interpretation of random chance is insufficient.
Our understanding of "probability" is incomplete.

One proposed remedy is the concept of negative probabilities, or "amplitudes"
(a poorly chosen term), where:

$
"probability"
= "amplitude" times "amplitude"
= "amplitude"^2
$

What does this mean?
Well, probabilities are always positive.
When you flip a coin, there's a $50%$ chance to get heads or tails.
There's no such thing as a $-50%$ chance,
because that wouldn't mean anything.
Amplitudes, however, can be negative.
If you had a $-1/2$ _amplitude_ chance,
and you wanted to know the related _probabiltiy_,
you would square it
($(-1/2)^2 = -1/2 times -1/2 = 1/4$)
and get a corresponding positive number.
So here, a $plus.minus 1/2$ amplitude
corresponds to a $1/4 = 25%$ probability.
Notice that the amplitude is capable of
representing more information than the probability,
because the amplitude can be positive or negative.

Let's say we have a coin-flipping machine.
It consists of a screen, which displays heads/tails,
and a button which flips the coin.
Looking at the screen is equivalent to "observing" some behavior.

For now, let's say that there is a $50% = 1/2$ probability to get tails,
and the same for heads.
It's a fair coin.
There's nothing quantum going on yet.

If we were to press the button twice,
a flowchart of the possible outcomes would look like:

#tree[
- tails
  - flip
    - $50%$ tails
      - flip
        - $25%$ tails
        - $25%$ heads
    - $50%$ heads
      - flip
        - $25%$ tails
        - $25%$ heads
]

If we add up the bottom row,
we would have $25% + 25%= 50%$ probability
to get heads or tails respectively.
As expected.

Now, let's get more specific by using amplitudes.
When we hit the button, if the previous flip was tails,
we have a $1/r2$ amplitude chance to get heads or tails respectively.
If the previous flip was heads, however,
we have a $1/r2$ amplitude chance to get tails
and a $(-1)/r2$ amplitude chance to get heads.

Notice that $(plus.minus 1/r2)^2 = 1/2 = 50%$,
so the _probabilities_ are the same as before in both cases,
even if the amplitudes are different.

Let's press the button twice
(without looking at the screen between presses)
and see what happens this time:

#tree[
- tails
  - flip
    - $1/r2$ tails
      - flip
        - $1/2$ tails
        - $1/2$ heads
    - $1/r2$ heads
      - flip
        - $1/2$ tails
        - $(-1)/2$ heads
]

Now, after pressing the button twice, let's look at the screen.
Observing the outcome means we have to convert to probabilities again.

$
	"tails": (1/2 + 1/2)^2 = 1^2 = 1 = 100% "probability" \
	"heads": (1/2 - 1/2)^2 = 0^2 = 0 = 0% "probability"
$

This time, if we press the button twice without observing the outcome,
there is a 100% chance that the final outcome is tails.
... TODO

Instead, let's say we _were_ to look at the screen
after hitting the button the first time:

#tree[
- tails
  - flip
    - $1/r2$ tails
      - observe
        - $(1/r2)^2 = 50%$ tails
          - flip
            - $1/r2$ tails
              - observe
                - $50% times (1/r2)^2 = 25%$ tails
            - $1/r2$ heads
              - observe
                - $50% times (1/r2)^2 = 25%$ heads
    - $1/r2$ heads
      - observe
        - $(1/r2)^2 = 50%$ heads
          - flip
            - $1/r2$ tails
              - observe
                - $50% times (1/r2)^2 = 25%$ tails
            - $(-1)/r2$ heads
              - observe
                - $50% times (1/r2)^2 = 25%$ heads
]

... TODO

/*

= Appendix: Representing Multiple Measurements as a Sum

#let cake = "cake"
$
"let" e = "eggs" \
"let" s = "cups of sugar" \
"let" f = "cups of flour" \

cake = 3e + 1/2s + 3/4f \
2 times cake = 2( 3e + 1/2s + 3/4f ) = 6e + 1s + 3/2f \
$

This idea can be just as easily applied to probabilities.

#let odds = "odds"
$
odds = 1/2h + 1/2t \
1/6 times odds = 1/6(1/2h + 1/2t) = 1/12h + 1/12t \
$

*/


/*

https://youtu.be/uva6gBEpfDY?is=qEde-W1QTBRJ42oo

dr. quantum
https://youtu.be/NvzSLByrw4Q?is=dTBflrJvFzQIkhK2

https://youtu.be/Ph3d-ByEA7Q?is=GzlvNVzkMjeYntHH

*/

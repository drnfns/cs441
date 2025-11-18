#import "conf.typ": conf
#import "@preview/cetz:0.4.0"
#import "@preview/cetz-plot:0.1.2"
#import "@preview/catppuccin:1.0.1": flavors
#show: conf.with(date: datetime(year: 2025, month: 10, day: 27))

= growth rates
we learned about algorithms, however, we don't really know how to compare them
-- which one is more efficiency, or fast, etc. in this section we introduce the
big-o notation, which is used to measure the growth rate of an algorithm.

== big-o notation
roughly speaking, the big-o notation describes how fast a function $f(x)$ grows
-- and the growth of this function will never exceed the growth of another
function $g(x)$.

=== definition
let $f$ and $g$ be functions from the set of integers or the set of real numbers
to the set of real numbers. we say that $f(x)$ is $O(g(x))$ if there are
constants $C$ and $k$ such that $|f(x)| <= C|g(x)|$ whenever $x > k$. we read
this as: "$f(x)$ is big-o of $g(x)$".

in simpler words, the definition of the growth rate of $f(x)$ is $O(g(x))$ means
that $f(x)$ grows slower than some fixed multiple($C$) of $g(x)$ as $x$ grows
without bound past $k$.

we call the constants $C$ and $k$ the witnesses -- and there are infinite
witnesses that exist when $f(x)$ is $O(g(x))$. if we find a pair of witnesses
$(C, k)$ that work, then any $C'$ such that $C' > C$ will also work; when we use
the same $k$. likewise, any $k'$ such that $k' > k$ will work, when using the
same $C$.

=== growth rate of polynomials
for polynomial functions, we can drop multiplicative constants and lower-order
terms. in short, a $f(x) = a_n x^n + a_(n-1) x^(n-1) + ... + a_1 x + a_0$ is
$O(x^n)$.

we can prove this by using the triangle inequality ($|a + b| <= |a| + |b|$). if
$x > 1$ we have

\
$
  |f(x)| & = |a_n x^n + a_(n-1) x^(n-1) + ... + a_1 x + a_0 | \
         & <= |a_n|x^n + |a_(n-1)|x^(n-1) + ... + |a_1|x + |a_0| \
         & = x^n (|a_n| + (|a_(n-1)|)/x + ... + (|a_1|)/x^(n-1) + (|a_0|)/x^n) \
         & <= x^n (|a_n| + |a_(n-1)| + ... + |a_1| + |a_0|)
$

\
this shows that $|f(x)| <= C x^n$, where $C = |a_n| + |a_(n-1)| + ... + |a_0|$
whenever $x > 1$. hence, the witnesses $C = |a_n| + |a_(n-1)| + ... + |a_0|$ and
$k = 1$ show that $f(x)$ is $O(x^n)$.

=== growth rate of combined functions
for the sum of functions, suppose that $f_1(x)$ is $O(g_1(x))$ and that $f_2(x)$
is $O(g_2(x))$. then, $(f_1 + f_2)(x)$ is $O(g(x))$, where
$g(x) = max(|g_1(x)|, |g_2(x)|)$ for all $x$.

for products, it is similar: if $f_1(x)$ is $O(g_1(x))$ and $f_2(x)$ is
$O(g_2(x))$, then $(f_1f_2)(x)$ is $O(g_1(x)g_2(x))$. in plain english, the
_product_ of two functions has a growth rate equal to the _product_ of their
individual growth rates.

=== finding the witnesses
todo

=== is it the smallest bound?
todo (prove a f(x) is not O(g(x)))

=== common $g(x)$'s
here are some common growth rates, ordered from the fastest growth to slowest.
note that $O(n!)$ isn't included in the graph because of a technical issue,
sorry!

\

#grid(
  columns: (0.35fr, 1.65fr),
  align: left,
  [
    - $O(n!)$
    - $O(2^n)$
    - $O(n^2)$
    - $O(n log n)$
    - $O(n)$
    - $O(log n)$
    - $O(1)$
  ],
  cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *
    let palette = flavors.latte.colors
    plot.plot(
      size: (9, 4),
      x-tick-step: 1,
      axis-style: "left",
      y-mode: "log",
      y-base: 2,
      {
        plot.add(
          domain: (2, 8),
          x => calc.pow(2, x),
          // label: $y = 2^n$,
          style: (stroke: palette.maroon.rgb),
        )
        plot.add(
          domain: (2, 8),
          x => calc.pow(x, 2),
          // label: $y = n^2$,
          style: (stroke: palette.mauve.rgb),
        )
        plot.add(
          domain: (2, 8),
          x => x * calc.log(x, base: 2),
          // label: $y = n log n$,
          style: (stroke: palette.red.rgb),
        )
        plot.add(
          domain: (2, 8),
          x => x,
          // label: $y = n$,
          style: (stroke: palette.peach.rgb),
        )
        plot.add(
          domain: (2, 8),
          x => calc.log(x, base: 2),
          // label: $y = log n$,
          style: (stroke: palette.sky.rgb),
        )
        plot.add(
          domain: (2, 8),
          x => 1,
          // label: $y = 1$,
          style: (stroke: palette.lavender.rgb),
        )
      },
    )
  }),
)

== big-omega notation
the big-o notation isn't perfect; it only tells us how fast the function grows
-- which is no faster than $g(x)$ (an upper bound). sometimes, we want to know
if the function grows at least as fast as $g(x)$ (a lower bound). in computer
science, we use big-o as a measurement of the "worst case", and big-omega as a
measurement of "best case".

=== definition
let $f$ and $g$ be functions from the set of integers or the set of real numbers
to the set of real numbers. we say that $f(x)$ is $Omega(g(x))$ if there are
constants $C$ and $k$ with $C$ _positive_ such that $f(x) >= C|g(x)|$ whenever
$x > k$. we read this as: "$f(x)$ is big-omega of $g(x)$".

*aside*: there is a connection between big-o and big-omega. specifically, $f(x)$
is $Omega(g(x))$ _if and only if_ $g(x)$ is $O(f(x))$. to put it simply, if $f$
grows _faster_ than $g$ ($f$ is $Omega(g)$), then $g$ grows _slower_ than $f$
($g$ is $O(f)$).

== big-theta notation
if $O(g(x))$ describes the _upper bound_ of $f(x)$ and $Omega(g(x))$ describes
the _lower_ bound of $f(x)$, then $Theta(g(x))$ describes the _exact_ growth of
$f(x)$.

=== definition
let $f$ and $g$ be functions from the set of integers or the set of real numbers
to the set of real numbers. we say that $f(x)$ is $Theta(g(x))$ if $f(x)$ is
$O(g(x))$ and $f(x)$ is $Omega(g(x))$. when $f(x)$ is $Theta(g(x))$, we say that
$f$ is big-theta of $g(x)$, that $f(x)$ is of _order_ $g(x)$, and that $f(x)$
and $g(x)$ are of the _same order_. instead of just $C$ and $k$ (two constants),
we have three constants $C_1$, $C_2$, and $k$ such that:
$C_1|g(x)| <= |f(x)| <= C_2|g(x)|$, whenever $x > k$.

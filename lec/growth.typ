#import "conf.typ": conf
#import "@preview/lovelace:0.3.0": *
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

=== finding the witnesses
todo

== big-omega notation
the big-o notation has its own limitations, however. it only tells us how fast
the function grows -- no faster than $g(x)$ (an upper bound). sometimes, we want
to know if the function grows at least as fast as $g(x)$ (a lower bound). in
computer science, we use big-o as a measurement of the "worst case", and
big-omega as a measurement of "best case".

=== definition
let $f$ and $g$ be functions from the set of integers or the set of real numbers
to the set of real numbers. we say that $f(x)$ is $Omega(g(x))$ if there are
constants $C$ and $k$ with $C$ _positive_ such that $f(x) >= C|g(x)|$ whenever
$x > k$. we read this as: "$f(x)$ is big-omega of $g(x)$".

*aside*: there is a connection between big-o and big-omega. specifically, $f(x)$
is $Omega(g(x))$ _if and only if_ $g(x)$ is $O(f(x))$.

== big-theta notation

=== definition
let $f$ and $g$ be functions from the set of integers or the set of real numbers
to the set of real numbers. we say that $f(x)$ is $Theta(g(x))$ if $f(x)$ is
$O(g(x))$ and $f(x)$ is $Omega(g(x))$. when $f(x)$ is $Theta(g(x))$, we say that
$f$ is big-theta of $g(x)$, that $f(x)$ is of _order_ $g(x)$, and that $f(x)$
and $g(x)$ are of the _same order_.

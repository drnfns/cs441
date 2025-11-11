#import "conf.typ": conf
#import "@preview/lovelace:0.3.0": *
#show: conf.with(date: datetime(year: 2025, month: 10, day: 27))

= growth rates

we learned about algorithms, however, we don't really know how to compare them -- which one is more efficiency, or fast, etc. in this section we introduce the big-o notation, which is used to measure the growth rate of an algorithm.

== big-o notation
*definition*: let $f$ and $g$ be functions from the set of integers (or real numbers) to the set of real numbers. we say that $f(x)$ is $O(g(x))$ if there are constants $C$ and $k$ (the _witnesses_) such that $|f(x)| <= C|g(x)|$ whenever $x >= k$.

\
formally, $O(g(x))$ is a set of functions:
$
  O(g(x)) = {f | exists k, C thin forall x(x > k -> |f(x)| <= C |g(x)|)}
$
note that when considering positive values only, we will often drop the absolute value.


  
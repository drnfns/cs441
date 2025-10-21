#import "conf.typ": conf
#show: conf.with(date: datetime(year: 2025, month: 10, day: 20))

= infinite cardinality
a finite set, or a set that has the same cardinality as $NN$ (or $ZZ^+$) is called *countable*. otherwise, it is called *uncountable*.

== countables

natural numbers have the same cardinality as positive integers. take this function: $f: NN -> ZZ^+, f(x) = x+1$; where it maps natural numbers to positive integers. first, it is _surjective_: every positive integer $k$ in the codomain is mapped by a natural number $k-1$. second, no two natural numbers have the same mapping, therefore it is _injective_ (one-to-one). therefore, it is a _bijection_, implying that the two cardinalities are the same: $|NN| = |ZZ^+|$, and both sets are countably infinite.

what about for $ZZ$? since it contains negative integers, it should be twice as large, right? let's look at the proof:

$
  f: ZZ -> ZZ^+, f(x) = cases(
    2x &"if" x > 0,
    1 &"if" x = 0,
    -2x + 1 wide &"if" x < 0,
  )
$

this function maps all integers to positive integers. we can see that all elements in the codomain are mapped mapped by interleaved positive/negative integers, therefore a _surjection_; we can also see that no two integer numbers have the same mapping (one-to-one, _injection_). since it is both surjective and injective, it is bijective; implying that the cardinalities are the same ($|ZZ| = |ZZ^+|$), and both sets are countably infinite.

== uncountables

the set of real numbers $RR$ is uncountable.
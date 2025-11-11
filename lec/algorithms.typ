#import "conf.typ": conf
#import "@preview/lovelace:0.3.0": *
#show: conf.with(date: datetime(year: 2025, month: 10, day: 22))

= algorithms

an *algorithm* is a finite sequence of precise instructions for solving a
*problem*. an algorithm should have these important features:

- finite: in order to execute, it must be finite
- sequence: the steps needs to be in the correct order
- precise: each step must be unambiguous
- instructions: each step can be carried out

\
the *problem* should be general enough to be broadly useful, but specific enough
to dictate strategies. for example: the problem "sort the numbers (6, 8, 5, 3)"
is too specific, and "return the numeric solution to the input query" is too
general.

== searching problem

*problem*: given a sequence of values $a_1, a_2, a_3, ..., a_n$, and a target
value $x$, return an index $i$ such that $a_i = x$ (or 0 if no such $i$ exists).

one algorithm that might solve this problem is by going through each number in
the sequence, and return the first $i$ such that $a_i = x$.

== pseudocode
*pseudocode* is a semi-structured set of notations. it is more precise than
describing in plain words, and it have less overhead than a programming
language. if a program (executed by computers, very precise) is analogous to a
formal proof, then pseudocode is analogous to an informal proof, where it is
meant to read by humans.

\
we can use pseudocode to solve the searching problem above:
#pseudocode-list(booktabs: true, title: [algorithm for the searching problem])[
  + *procedure* linear search($x$: integer, $a_1$, $a_2$, ..., $a_n$: distinct
    integers)
    + $i$ := 1
    + *while* ($(i <= n) and (x != a_i)$)
      + $i$ := $i + 1$
      + *if* $i <= n$ then
        + location := $i$
      + *else*
        + location := 0
    + *return* location
]

== bindary searching
enumerating through each number in the sequence isn't very efficient, however.
instead, we can use the binary search algorithm, since a sequence is always in
ascending order. a binary search algorithm searches from both sides, and
compares the midpoint against the target value; see pseudocode below:

\
#pseudocode-list(booktabs: true, title: [binary search through sequence])[
  + *procedure* binary_search(_x_: integer, $a_1$, $a_2$, ..., $a_n$: integers
    in non-decreasing order)
    + _start_ := 1
    + _end_ := n
    + *while* _start_ < _end_:
      + _mid_ := floor((_start_ + _end_) / 2)
      + *if* _x_ > $a_mid$ *then*:
        + _start_ := _mid_ + 1
      + *else if* _x_ < $a_mid$ *then*:
        + _end_ := _mid_ - 1
      + *else*:
        + _start_ := _mid_
        + _end_ := _mid_
    + *if* _x_ = $a_"start"$ *then*:
      + _location_ := _start_
    + *else*:
      + _location_ := 0
    + *return* location
]

#import "conf.typ": conf
#import "@preview/lovelace:0.3.0": pseudocode-list
#show: conf.with(date: datetime(year: 2025, month: 11, day: 05))

= integer representation and algorithms
we usually use base 10 to represent numbers, and we can break each number down
like the following:

$
  3528 = 3 dot 10^3 + 5 dot 10^2 + 2 dot 10^1 + 8 * 10^0
$

this process is called *decimal expansion*. other base systems work very
similarly; and we can define it formally.

== base $b$ expansion of $n$
*theorem*: let $b$ be an integer greater than 1. any $n in ZZ^+$ can be
expressed _uniquely_ in the form

$
  n = a_k b^k + a_(k-1) b^(k-1) + ... + a_1 b^1 + a_0 b^0
$

where $k in NN$, each $a_i in NN$ where $a_i < b$ and $a_k != 0$.

when $b > 10$, we write each $a_i$ as a single symbol in an extended "alphabet"
of digits. for example, for a base 16 system, the digits would be: 0, 1, 2, 3,
4, 5, 6, 7, 8, 9, A, B, C, D, E, F.

== common base expansions
these base systems are very common in computing:

- base 2 (binary): expansions are bit strings.
  - 1 bit per digit
  - $412 = (110011100)_2$
- base 8 (octal): each digit $a_i$ is $0 <= a_i < 8$
  - 3 bits per digit
  - $412 = (634)_8$
- base 16 (hexadecimal): each digit $a_i in {0, 1, ..., 9, A, B, ..., F}$
  - 4 bits per digit
  - $412 = (19C)_16$

== constructing base $b$ expansions
the algorithm works by repeatedly dividing the number $n$ by the base $b$.

#pseudocode-list[
  + *procedure* base-b-expansion(n: $NN$, b: $NN, b > 1$)
    + q := n
    + k := 0
    + *while* $q != 0$
      + $a_k$ := q *mod* b
      + q := q *div* b
      + k := k + 1
    + *return* ($a_(k-1), a_(k-2), ..., a_1, a_0$)
]

the complexity of this algorithm is $O(n)$, where $n$ is the number of digits.

=== aside: base $2^x$ systems
when the base system is a power of 2 ($b = 2^x$), we can convert it directly
between binary and base $b$ by grouping bits into chunks of $x$, rather than
doing the full division algorithm.

for an octal ($2^3$) system, we group binary digits into chunks of $3$; and for
an hexadecimal ($2^4$) system, we can group them into chunks of $4$. for
example, if we want to convert an octal into a hexadecimal:

$
  & (3720)_8 \
  & = (011\_111\_010\_000)_2 wide && "(convert each digit to decimal)" \
  & = (0111\_1101\_0000)_2        && "(regroup in chunks of 4)" \
  & = (7"D"0)_16                  && "(convert to hexadecimal)"
$


== base $b$ algorithms

=== addition
this is the standard "column addition" we have learned in grade school. we add
digits column by column from right to left; and if the sum ($t$) is bigger than
the base $b$, we carry the overflow ($floor(t\/b)$) to the next column.

#pseudocode-list[
  + *procedure* add(x: $NN$, y: $NN$, b: $NN, b > 1$)
    + c := 0
    + *for* j := 0 *to* n - 1
      + t := $x_j$ + $y_j$ + c
      + c := $floor.l$t/b$floor.r$
      + $s_j$ := t - bc
    + $s_n$ := c
    + *return* ($s_n$, $s_(n-1)$, ..., $s_1$, $s_0$)
]

its complexity is $O(n)$ (linear), where $n$ is the number of digits.

=== multiplication
this algorithm uses the "shift and add" method. we first multiply the entire
number $x$ by each single digit of $y$, then shift the product by $j$ places,
and finally find the sum.

#pseudocode-list[
  + *procedure* multiply(x: $NN$, y: $NN$, b: $NN, b > 1$)
    + p := 0
    + *for* j := 0 *to* n - 1
      + c := 0
      + *for* i := 0 *to* n - 1
        + t := $x_i dot y_j + c$
        + c := $floor.l$t/b$floor.r$
        + $r_i$ := t - bc
      + $r_n$ := c
      + r := r \* $b^j$
      + p := add(p, r)
    + *return* ($p_(2n)$, $p_(2n-1)$, ..., $p_1$, $p_0$)
]

the complexity of this algorithm is $O(n^2)$, where $n$ is the number of digits.

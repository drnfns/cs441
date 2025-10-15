#import "conf.typ": conf
#show: conf.with(date: datetime(year: 2025, month: 10, day: 15))

= summations
we can use summation to find the sum of a sequence of numbers. a *sequence* is a function from a subset of of the set of integers to a set $S$. we use the notation $a_n$ to denote the image of the integer $n$. $a_n$ is called the *term* of a sequence.

== special sequences
*geometric progressions* are sequences of the form ${a r^n}$ where $a, r in RR$.
  - $1, 1/2, 1/4, 1/8, ...$ ($a = 1, r = 1/2$)
  - $1, -1, 1, -1, 1, ...$ ($a = 1, r = -1$)

\
*arithmetic progressions* are sequences of the form ${a + n d}$ where $a, d in RR$.
  - $2, 4, 6, 8, 10, ...$ ($a = 2, d = 2$)
  - $-10, -15, -20, -25$ ($a = -10, d = -5$)

== recurrence
sequences are often specified using recurrence relations (recursive approach); where later terms are specified from earlier terms.

\
for example, the fibonacci sequence:
- $f_0 = 0$
- $f_1 = 1$
- for any $n > 1$, $f_n = f_(n-1) + f_(n - 2)$

\
to write a recursive sequence, we need at least one *initial condition* (or base case).

== summation notation
the summation notation lets us compactly represent the sum of terms $a_m + a_(m + 1) + ... + a_n$.

\
$
  sum_(j=m)^n a_j = sum_(m <= j <= n) a_j
$

\
$j$ is the index of summation, while $m$ and $n$ are the lower and upper limit, respectively.

=== summation operations
the summation operation is linear; the usual laws of algebra apply. constant factors can be pulled out of the summation, and a summation over a sum (or difference) can be split into a sum (or
difference) of smaller summations. example:

\
$
  sum_(j=1)^n (d x_j + b y_j - c z_j) = a sum_(j=1)^n x_j + b sum_(j=1)^n y_j - c sum_(j=1)^n z_j
$

=== summation over sets
summations can also be used to find the sum (with some operation) over a set, it doesn't have to be just a sequence. for example:

\
$
  &sum_(s in {0, 2, 4, 6}) (s + 2) \
  &= (0 + 2) + (2 + 2) + (4 + 2) + (6 + 2) \
  &= 20
$

=== nested summations
summations can also be nested. often, we will see this when analyzing nested loops within a program. example:

\
$
  &sum_(j=1)^4 sum_(k=1)^3 (j k) \
  &= sum_(j = 1)^4(j + 2j + 3j) wide wide &"expand inner sum"\
  &= sum_(j = 1)^4 6j &"simplify" \
  &= 6 + 12 + 18 + 24 &"expand outer sum" \
  &= 60
$

== reorganizing summations
sometimes it is helpful to shift the index of the summation, so we can combine two or more similar summations. see example:

\
$
  s &= sum_(j = 1)^10 j^2 + sum_(k = 2)^11 (2k - 1) \
    &= sum_(j = 1)^10 j^2 + sum_(j = 1)^10 (2(j + 1) - 1) \
    &= sum_(j = 1)^10 (j^2 + 2(j + 1) - 1) \
    &= sum_(j = 1)^10 (j^2 + 2j + 1) \
    &= sum_(j = 1)^10 (j + 1)^2
$

\
in the second step, we changed the index of the summation; we also changed the lower and upper limit. since we moved the summation's range by 1, we need to add 1 to $j$.

== closed forms
calculating the sum of series can be time consuming. thankfully, there are closed forms of certain series that can help us calculate the sum of them rather trivially.

\
this is the closed form for a geometric series:

\
$
  sum_(j=0)^n = cases(
    (a r^(n+1) - a)/(r-1) wide &"if" r != 1,
    (n+1) a &"if" r = 1
  )
$

\
here are some other sums that have its corresponding closed form:

\
#table(
  columns: (1fr, 1fr),
  table.header("sum", "closed form"),
  $
    sum_(j=1)^n j
  $,
  $
    n(n+1)/2
  $,
  $
    sum_(j=1)^n j^2
  $,
  $
    (n(n+1)(2n+1))/6
  $,
  $
    sum_(j=1)^n j^3
  $,
  $
    (n^2(n+1)^2)/4
  $
)

=== aside: proof of geometric series' closed form
$
  S_n &= sum_(j=0)^n a r^j \
  r dot S_n &= r dot sum_(j=0)^n a r^j &"multiply by r on both sides" \
  r dot S_n &= sum_(j=0)^n a r^(j + 1) &"" \
  r dot S_n &= sum_(k=1)^(n+1) a r^k &"substitute k = j+1" \
  r dot S_n &= sum_(k=1)^(n) a r^k + a r^(n+1) &"take out last element" \
  r dot S_n &= sum_(k=1)^(n) a r^k + a r^(n+1) &"take out last element" \
  r dot S_n &= sum_(k=0)^(n) a r^k - a r^0 + a r^(n+1) wide wide &"move lower and subtract extra" \
  r dot S_n &= S_n - a + a r^(n+1) &"substitute sum with" S_n \
  r dot S_n - S_n &= a r^(n+1) - a \
  S_n (r-1) &= a r^(n+1) - a \
  S_n &= (a r^(n+1) - a)/(r-1) &qed
$

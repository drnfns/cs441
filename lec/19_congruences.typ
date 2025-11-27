#import "conf.typ": conf
#import "@preview/lovelace:0.3.0": pseudocode-list
#show: conf.with(date: datetime(year: 2025, month: 11, day: 12))

= solving congruences
imagine it is 10 o'clock. 5 hours later, it is 3 o'clock, not 15. this
"resetting" behaviour is the essence of *modular arithmetic*.

== arithmetic operations with $mod n$
$ZZ_m$ denotes the set of non-negative integers less than $m$ (the remainders
when dividing by $m$).

\
modular arithmetic "preserves" addition and multiplication:
$
    (a + b) mod m & = ((a mod m) + (b mod m)) mod m \
  (a dot b) mod m & = ((a mod m) (b mod m)) mod m
$

\
we define operations restricted to this set:
$
    a +_m b & = (a + b) mod m \
  a dot_m b & = (a dot b) mod m
$

== solving linear congruences
we look at equations of the form $a x equiv b (mod m)$.

=== additive inverses
look at an example: in order to solve $a + 8 equiv 2 (mod 11)$:
+ find the *additive inverse* of 8 modulo 11.
  - $-8 equiv 3 (mod 11)$
  - $-8 = (11 dot -1) + 3$
+ add 3 to both sides: $a equiv 5 (mod 11)$.

*note*: adding any multiple of $m$ preserves the value $(mod m)$.

=== multiplicative inverses
to solve $a x equiv b (mod m)$ (a *linear congruence*), given values for $a$ and
$b$, we need a value $accent(a, -)$ such that
$a dot accent(a, -) equiv 1 (mod m)$. if we have this value, we can multiply it
on both sides (similarly to multiplying by the reciprocal), and then simplify to
find the solution. bézout's theorem, introduced below, helps to find that
number.

\
*theorem* (bézout's theorem): if $gcd(a, m) = 1$ ($a$ and $m$ are coprime),
there exist integers $s$ and $t$ such that: $s a + t m = 1$.

\
this implies $s a equiv 1 (mod m)$, meaning $s$ is the multiplicative inverse of
$a$.

\
*collary*: since $gcd(a, m) = 1$ and $s a + t m = 1$, by substitution, we can
get the *bézout identity*: $gcd(a, b) = s a + t b$.

== extended euclidean algorithm (eea)
the extended euclidean algorithm builds on the basic version that we have
learned in the previous lecture. other than just finding the gcd, we also find
the bézout numbers ($s, t$; refer to section above).

the first step of the extended euclidean algorithm is just by performing the
basic version first; let's use $a = 99$ and $b = 78$ as an example.

\
$
  99 & = 78 dot 1 + 21 \
  78 & = 21 dot 3 + 15 \
  21 & = 15 dot 1 + 6 \
  15 & = 6 dot 2 + 3 \
   6 & = 2 dot 3 + 0
$

\
since the last remainder is zero(0), we disregard the last line and use the line
before: $gcd(99, 78) = 3$.

to find out the bézout numbers for the second step of the algorithm, we want to
find how to express 3 with 99 and 78. to do that, we look at the previous work,
start from the bottom, and work our way back.

\
$
   3 & = 15 - (2 dot 6) \
   6 & = 21 - (1 dot 15) \
   3 & = 15 - (2 dot (21 - (1 dot 15)))              && "(substitute 6)" \
     & = 15 - (2 dot 21) + (2 dot 15)                && "(distribute -2)" \
     & = (3 dot 15) - (2 dot 21)                     && "(combine 15s, rearrange)" \
  15 & = 78 - (3 dot 21) \
   3 & = (3 dot (78 - (3 dot 21))) - (2 dot 21) wide && "(substitute 15)" \
     & = (3 dot 78) - (9 dot 21) - (2 dot 21)        && "(distribute 3)" \
     & = (3 dot 78) - (11 dot 21)                    && "(combine 21s)" \
  21 & = 99 - (1 dot 78) \
   3 & = (3 dot 78) - (11 dot (99 - (1 dot 78)))     && "(substitute 21)" \
     & = (3 dot 78) - (11 dot 99) + (11 dot 78)      && "(distribute -11)" \
   3 & = (#rect[14] dot 78) + (#rect[-11] dot 99)    && "(combine 78s)"
$

\
we have found that $s = -11$ and $t = 14$ such that $3 = s a + t b$.

\
here's an iterative version of the algorithm in pseudocode:

\
#pseudocode-list(booktabs: true, title: [algorithm: extended euclidean algorithm
  (eea)])[
  + *procedure* extended_euclid(a, b)
    + $("old"_r, r) := (a, b)$
    + $("old"_s, s) := (1, 0)$
    + $("old"_t, t) := (0, 1)$
    + *while* $r != 0$
      + $q := floor("old"_r \/ r)$
      + $("old"_r, r) := (r, "old"_r - q * r)$
      + $("old"_s, s) := (s, "old"_s - q * s)$
      + $("old"_t, t) := (t, "old"_t - q * t)$
    + *return* $("old"_r, "old"_s, "old"_t)$
]


== chinese remainder theorem (crt)
used to solve systems of congruences where moduli are pairwise coprime.

\
assume we have a system like this:
$
  x equiv a_1 (mod m_1) \
  x equiv a_2 (mod m_2) \
  dots \
  x equiv a_n (mod m_n)
$


\
*solution*: let $m = m_1 m_2 ... m_n$. let $M_k = m / m_k$ (product of all
moduli except $m_k$). let $y_k$ be the inverse of $M_k$ modulo $m_k$.

\
the unique solution modulo $m$ is:
$ x = sum_(k=1)^n a_k M_k y_k $

\
*example* (sunzi suanjing):
$ x equiv 2 (mod 3), x equiv 3 (mod 5), x equiv 2 (mod 7) $
- $m = 3 dot 5 dot 7 = 105$.
- $M_1 = 35, y_1 = 2$ (since $35 dot 2 = 70 equiv 1 mod 3$).
- $M_2 = 21, y_2 = 1$ (since $21 dot 1 = 21 equiv 1 mod 5$).
- $M_3 = 15, y_3 = 1$ (since $15 dot 1 = 15 equiv 1 mod 7$).
- $x = 2(35)(2) + 3(21)(1) + 2(15)(1) = 140 + 63 + 30 = 233 equiv 23 (mod 105)$.

== advanced concepts

=== fermat's little theorem
if $p$ is prime and $p$ does not divide $a$:
$ a^(p-1) equiv 1 (mod p) $
useful for computing large powers, e.g., $7^222 mod 11$.

=== primitive roots & discrete log
- *primitive root ($r$)*: an element in $ZZ_p$ whose powers generate all nonzero
  elements of $ZZ_p$.
- *discrete log problem*: given $p, r, b$, find $e$ such that
  $r^e equiv b (mod p)$. there is no known polynomial time algorithm for this
  (foundation of cryptography).

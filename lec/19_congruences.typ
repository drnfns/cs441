#import "conf.typ": conf
#import "@preview/lovelace:0.3.0": pseudocode-list
#show: conf.with(date: datetime(year: 2025, month: 11, day: 12))

= solving congruences
imagine it is 10 o'clock. 5 hours later, it is 3 o'clock, not 15. this "resetting"
behaviour is the essence of *modular arithmetic*.

== arithmetic operations with $mod n$
$ZZ_m$ denotes the set of non-negative integers less than $m$ (the remainders when
dividing by $m$).

\
modular arithmetic "preserves" addition and multiplication:
$
  (a + b) mod m &= ((a mod m) + (b mod m)) mod m \
  (a dot b) mod m &= ((a mod m) (b mod m)) mod m
$

\
we define operations restricted to this set:
$
  a +_m b &= (a + b) mod m \
  a dot_m b &= (a dot b) mod m
$

== solving linear congruences
we look at equations of the form $a x equiv b (mod m)$.

=== additive inverses
look at an example: in order to solve $a + 8 equiv 2 (mod 11)$:
+ find the *additive inverse*  of 8 modulo 11.
  - $-8 equiv 3 (mod 11)$
  - $-8 = (11 dot -1) + 3$
+ add 3 to both sides: $a equiv 5 (mod 11)$.

*note*: adding any multiple of $m$ preserves the value $(mod m)$.

=== multiplicative inverses
to solve $a x equiv b (mod m)$ (a *linear congruence*), given values for $a$ and $b$, we need a value $accent(a, -)$ such that
$a dot accent(a, -) equiv 1 (mod m)$. if we have this value, we can multiply on both sides, and then simplify. bézout's theorem helps to find that number.

\
*theorem* (bézout's theorem): if $gcd(a, m) = 1$ ($a$ and $m$ are coprime), there exist integers
$s$ and $t$ such that: $s a + t m = 1$.

\
this implies $s a equiv 1 (mod m)$, meaning $s$ is the multiplicative inverse
of $a$.

\
*collary*: since $gcd(a, m) = 1$ and $s a + t m = 1$, by substitution, we can get the *bézout identity*: $gcd(a, b) = s a + t b$.

== extended euclidean algorithm (eea)
we utilise the *extended euclidean algorithm* to find the gcd and the bézout numbers ($s, t$).

\
*example*: find gcd and bézout numbers for 99 and 78.
we track $r_i = r_(i-2) - q_i r_(i-1)$ and work backwards (or track $s, t$
alongside):

\
#table(
  columns: (auto, auto, auto, auto),
  inset: 5pt,
  align: center,
  [*row*], [*a*], [*b*], [*formula*],
  [1], [99], [78], [$99 = 1 dot 78 + 21$],
  [2], [78], [21], [$78 = 3 dot 21 + 15$],
  [3], [21], [15], [$21 = 1 dot 15 + 6$],
  [4], [15], [6], [$15 = 2 dot 6 + 3$],
  [5], [6], [3], [$6 = 2 dot 3 + 0$],
)

\
$gcd(99, 78) = 3$.
back-substitution yields $s = -11, t = 14$, so:
$ 99(-11) + 78(14) = 3 $

\
*application*: solve the linear congruence $57x equiv 5 (mod 98)$.
+ eea on 98 and 57 gives: $98(-25) + 57(43) = 1$.
+ inverse of 57 mod 98 is 43.
+ multiply both sides by 43:
  $ x equiv 5 dot 43 equiv 215 equiv 19 (mod 98) $

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
*solution*:
let $m = m_1 m_2 ... m_n$.
let $M_k = m / m_k$ (product of all moduli except $m_k$).
let $y_k$ be the inverse of $M_k$ modulo $m_k$.

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
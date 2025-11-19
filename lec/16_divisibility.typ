#import "conf.typ": conf
#show: conf.with(date: datetime(year: 2025, month: 11, day: 03))

= divisibility and modular arithmetic
divisibility is one of the most basic properties of integers. an integer $a$ ($a != 0$) can divide another integer $b$ _if and only if_ there is another integer $c$ such that $b = a c$. we write that $a | b$ to say that $a$ divides $b$, and $a divides.not$ to say that $a$ does not divide $b$.

formally, divisibility can be written as:

$
  a | b <-> exists c in ZZ thin (b = a c)
$

note: if $a | b$, then
  - $a$ is called a *factor* of $b$, and
  - $b$ is called a *multiple* of $a$.

== properties of divisibility

- if $a | b$ and $a | c$, then $a | (b + c)$
  - proof: $b = a k, c = a j$, so $b + c = a k + a j = a(k + j)$
- if $a | b$, then $a | b c$ for all integers $c$.
  - proof: $b = a k$, so $b = a k c = a(k c)$
- if $a | b$ and $b | c$, then $a | c$.
  - proof: $ b = a k$ and $c = b j$, so $c = a j k$.

== division "algorithm"
it's not really an algorithm, but it is called that for historical reasons. here's how it goes: let $a$ be an integer and let $d$ be a positive integer. there are _unique_ integers $q$ and $r$, with $0 <= r < d$, such that $a = d q + r$.

- $a$ is called the *dividend*
- $d$ is called the *divisor*
- $q$ is called the *quotient*
- $r$ is called the *remainder*
- $q = a "div" d$ (divisor operator)
  - gets the biggest possible integer quotient that can be divided from a number.
- $r = a mod d$ (modulo operator)
  - gets the remainder of a number after divided by the largest integer quotient possible.

== property of modulo
if $a$ and $b$ are integers and $m$ is a positive integer, we say that $a$ is congruent to $b$ modulo $m$ _if and only if_ $m | (a - b)$. we write this as $a equiv b (mod m)$.

note: $a equiv b (mod m)$ _if and only if_ $a mod m = b mod m$.

== properties of congruencies
let $m$ be a positive integer. the integers $a$ and $b$ are congruent modulo $m$ ($a equiv b (mod m)$) _if and only if_ there is an integer $k$ such that $a = b + k m$.

let $m$ be a positive integer. if $a equiv b (mod m)$ and $c equiv d (mod m)$, then $(a + c) equiv (b + d) (mod m)$ and $a c equiv b d (mod m)$.
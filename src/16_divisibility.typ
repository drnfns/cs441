#import "conf.typ": conf
#show: conf.with(date: datetime(year: 2025, month: 11, day: 03))

= divisibility and modular arithmetic
divisibility is one of the most basic properties of integers. an integer $a$
($a != 0$) can divide another integer $b$ _if and only if_ there is another
integer $c$ such that $b = a c$. we write that $a | b$ to say that $a$ divides
$b$, and $a divides.not b$ to say that $a$ does not divide $b$. we call $a$ the
*factor* of $b$, and $b$ the *multiple* of $a$.

formally, divisibility can be written as:

$
  a | b <-> exists c in ZZ thin (b = a c)
$


== properties of divisibility

=== additivity
*theorem*: if $a | b$ and $a | c$, then $a | (b + c)$.

_proof_: by definition of divisibility, there must be some integer $k$ and $j$
such that $b = a k$ and $c = a j$. therefore, by substitution,
$b + c = (a k + a j) = a(k + j)$. since both $k$ and $j$ are integers, $k + j$
is also just an integer, and by definition of divisibility, $a$ is divisible by
$b$ where $b$ is the product of $a$ and $k + j$. $qed$

=== multiplication
*theorem*: if $a | b$, then $a | b c$ for all integers $c$.

_proof_: by definition of divisibility, there exist some integer $k$ such that
$b = a k$. therefore, $b c = (a k) dot c$. by the associativity of
multiplication, $b c = a (k c)$. since $k$ and $c$ are integers, their product
is also an integer. by definition of divisibility, $a$ is divisible by an
integer $b c = a (k c)$. $qed$

=== transitivity
*theorem*: if $a | b$ and $b | c$, then $a | c$.

_proof_: by definition of divisibility, there exist some integer $k$ and $j$
such that $b = a k$ and $c = b j$. therefore, by substitution,
$c = (a k) dot j$. by definition of divisibility and associativity, we can see
that $c = a(j k)$. $qed$

== division "algorithm"
*theorem*: let $a$ be an integer and let $d$ be a positive integer. there are
_unique_ integers $q$ and $r$, with $0 <= r < d$, such that $a = d q + r$.

- $a$ is called the *dividend*
- $d$ is called the *divisor*
- $q$ is called the *quotient*
- $r$ is called the *remainder*
- $q = a "div" d$ (integer division)
  - calculates the biggest possible integer quotient that can be divided from a
    number.
- $r = a mod d$ (modulo/remainder)
  - calculates the remainder (non-negative) after divided by the largest integer
    quotient possible.

== property of modulo
*theorem*: if $a$ and $b$ are integers and $m$ is a positive integer, we say
that $a$ _is congruent to_ $b$ modulo $m$ _if and only if_ $m | (a - b)$. we
write this as $a equiv b (mod m)$. we can write this theorem in a chain of
equivalence:

$
  a equiv b (mod m) <=> a mod m = b mod m <=> m | (a - b)
$

this chain have three parts:
+ *congruency*; a is congruent to $b mod m$.
+ *remainders*; the remainder of $a$ and $b$ divided by $m$ is the same.
+ *division*; $a-b$ is divisible by $m$.

\
in simple words, two integers $a$ and $b$ are congruent $mod m$ ($m > 0$) if and
only if both numbers divided by $m$ produce the exact same remainder.
additionally, $m$ should also evenly divide $a - b$.

== properties of congruencies

=== algebraic form
*theorem*: if $a$ is congruent to $b (mod m)$ ($a equiv b (mod m)$), then there
exists some integer k such that $a = b + k m$.

this is useful for proofs because it lets us replace the congruence symbol
($equiv$) with an equal ($=$) sign.

=== addition and multiplication
*theorem*: let $m$ be a positive integer. if $a equiv b (mod m)$ and
$c equiv d (mod m)$, then $(a + c) equiv (b + d) (mod m)$ and
$a c equiv b d (mod m)$.

in simpler words: if $a$ and $b$ are congruent $(mod m)$, and $c$ and $d$ are
also congruent $(mod m)$, then $(a + c)$ is congruent to $(b + d) (mod m)$ and
$a dot c$ is congruent to $b dot d (mod m)$.

_proof (addition)_: assume $a equiv b (mod m)$ and $c equiv d (mod m)$.
according to the property of modulo, this means $m | (a - b)$ and $m | (c - d)$.
by the definition of divisibility, this means that there exists some integers
$k$ and $j$ such that $a - b = k m$ and $c - d = j m$. since we want to prove
$(a + c) equiv (b + d) (mod m)$; by doing a bit of algebra, we can get:

$
  & (a + c) - (b + d) \
  & = (a - b) + (c - d) \
  & = k m + j m wide "(substitution)" \
  & = m (j + k)
$

therefore, $m | ((a + c) - (b + d))$, which means
$(a + c) equiv (b + d) (mod m)$. $qed$

_proof (multiplication)_: we can use the algebraic form of congruence from the
theorem above: $a = b + k m$ and $c = d + j m$ for some integers $k$ and $j$.
substitute these into the product of $a dot c$:

$
        a c & = (b + k m) (d + j m) \
            & = b d + b j m + d k m + k m j m \
            & = b d + m(b j + d k + k m j) \
  a c - b d & = m (b j + d k + k m j)
$

since $(b j + d k + k j m)$ is an integer, $m | (a c - b d)$, which means
$a c equiv b d (mod m)$.

== applications of congruencies
congruencies have many applications within computer science; we will look at
three of them in this section.

=== hash functions
hash functions allow us to quickly and efficiently locate stored data. we apply
a hash function that determines the storage location of the record based on its
id. a common hash function is $h(k) = k mod n$, where n is the number of
available storage locations.

=== prng
congruencies can be used to generate seemingly random sequences. we can create
our own simple pseudorandom number generator in two steps: first, we choose some
constants: a modulus $m$, a multiplier $a$, an increment $c$, and a seed $x_0$.

then, each number in the sequence is decided by this formula:
$x_(n+1) = (a x_n + c) mod m$. here's an example where we have
$m = 9, a = 7, c = 4, x_0 = 3$:

- $x_1 = (7 x_0 + 4) mod 9 = 25 mod 9 = 7$
- $x_2 = (7 x_1 + 4) mod 9 = 53 mod 9 = 8$
- $x_3 = (7 x_2 + 4) mod 9 = 60 mod 9 = 6$
- $x_4 = (7 x_3 + 4) mod 9 = 46 mod 9 = 1$
- $x_5 = (7 x_4 + 4) mod 9 = 11 mod 9 = 2$

=== cryptography
cryptography is the study of "secret messages"; and one of the earliest forms of
encryption, the caesar cipher, is based on congruency. to encode a message using
the caesar cipher, we first choose a shift index $s$. then, we map each letter
in the alphabet to a number; and finally, for each letter, we calculate
$f(p) = (p + s) mod 26$ (assuming the english alphabet, with 26 letters).

for example, we choose the shift index $s = 9$. we want to encrypt this secret
message "ATTACK". if A-Z is mapped 0-25, the message would be $0 19 19 0 2 10$.
then, we apply the function to each number: $f(0) = 9$, $f(19) = 2$,
$f(2) = 11$, $f(10) = 19$. at the end, we would get this encrypted message:
$9 2 2 9 11 19$. to an attacker, even if they are smart enough to figure out we
are mapping each number to the alphabet, without the shift index $s$, the
message will be meaningless; since $9 2 2 9 11 19$ maps to "JCCJLT".

to decrypt the message, we use the inverse function: $f^(-1) = (p - s) mod 26$
(again, assuming the alphabet have 26 letters).

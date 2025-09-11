#import "conf.typ": bi, conf
#show: conf.with(date: datetime(year: 2025, month: 9, day: 10))

= predicates and quantifiers
propositional logic is simple, however limited. we can't use propositional logic
to represent some classes of natural language statements such as this:

\
given that:
- all of my dogs like peanut butter, and
- kody is one of my dogs
can we draw the conclusion that kody likes peanut butter with propositional
logic?

\
another example, if we want to reason with prime numbers:
- some natural numbers are prime numbers
- a prime number has no divisors other than 1 and itself

\
in order to draw the conclusion with what we have learned with propositional
logic so far, we will have to enumerate all the prime numbers:
- $p_1 equiv 2 "has no divisors other than" 1 "and itself"$
- $p_2 equiv 3 "has no divisors other than" 1 "and itself"$
- $p_3 equiv 5 "has no divisors other than" 1 "and itself"$
- $p_4 equiv 7 "has no divisors other than" 1 "and itself"$
- $p_5 equiv 11 "has no divisors other than" 1 "and itself"$
- ...

\
the previous examples are called _syllogisms_ -- where a conclusion can be drawn
from two given or assumed propositions. for example:

\
#align(center)[$
  & "All men are mortal" #h(5em)   && "(major premise)" \
  & "Socrates is a man" #h(5em)    && "(minor premise)" \
  & #line(length: 9.5em) \
  & therefore "Socrates is mortal" && "(conclusion)"
$]

\
we can use predicates and quantifiers to establish syllogisms, similar to the
one shown above.

== predicates
predicate logic allows us to use _propositional functions_ during our logical
reasoning. for example:

\
$
  P(x) equiv x^3 > 0
$

\
in this propositional function, $x$ is the variable, and $x^3 > 0$ is the
predicate. note that propositional function $P(x)$ _has no truth value_ unless
it is evaluated for a given $x$ or a set of $x$s. for example:

\
$
    P(0) & equiv bot \
   P(23) & equiv top \
  P(-42) & equiv bot \
$

\
The predicate doesn't have to be just one variable. These are also valid
predicates:

\
$
  P(x, y) equiv x + y = 42 \
  S(x, y, z) equiv x + y = z
$

== quantifiers
with _quantifiers_, we can make general statements that turn propositional
functions into propositions. in english, we use quantifiers regularly:

- *all* students can ride the bus for free
- *many* people like chocolate
- i enjoy *some* types of tea
- *at least one* person will sleep through their final exam

\
quantifiers require us to define a _universe of discourse_ (or a _domain_) in
order for the quantification to make sense.

=== universal quantifier
a *universal quantifier* allows us to make statements about the _entire domain_.
for example:

- *all* of my dogs like peanut butter
- *every* even integer is a multiple of two
- *for each* positive integer $x$, $2x > x$

\
in mathematical notation, we can express the universal quantification of $P(x)$
as $forall x thin P(x)$.

\
remember the second example in section 1? take the proposition: "if a natural
number is prime, it has no divisors other than 1 and itself." we can rewrite it
using predicates and quantifiers:

\
$
  P(x) & equiv x "is prime" \
  D(x) & equiv x "has no divisors other than 1 and itself" \
$
#align(center)[#rect[$forall x in NN thick [P(x) -> D(x)]$]]

=== existential quantifier
an *existential quantifier* allow us to make statements about _some objects_ in
a domain. for example:

- *some* elephants are scared of mice
- *there exist* integers $a$, $b$, and $c$ such that the equality
  $a^2 + b^2 = c^2$ is true
- *there is at least one* person who did better than john on the midterm

\
given a propositional function $P(x)$, we express the existential quantification
of $p(x)$ as $exists x thin p(x)$.

\
for example: "the inequality x + 1 < x holds for at least one integer" can be
written in the following:

\
$
  P(x) equiv x + 1 < x \
  exists x in QQ thick [P(x)]
$


=== domain restriction
we can also restrict the domain of quantification. for example, take this
statement: "the square of every natural number less than 4 is no more than 9"
- *domain*: natural numbers ($NN$)
- *statement*: $forall x < 4 thick (x^2 <= 9)$
  - this is equivalent to $forall x thick [(x < 4) -> (x^2 <= 9)]$
- *truth value*: true

\
this also works for the existential quantifier; take this statement: "some
integers between 0 and 6 are prime"
- *domain*: integers ($QQ$)
- *statement*: $exists 0 <= x <= 6 thick P(x)$
  - equivalent to $exists x thick [(0 <= x <= 6) and P(x)]$
- *truth value*: true

== quantifiers precedence

== quantifier laws

==

#pagebreak()
= activities
== prove: $exists x thin [P(x) or Q(x)] equiv exists x thin P(x) or exists x Q(x)$

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

we also

\
the previous examples are called _syllogisms_.


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
for example, we can rewrite the sentence "the inequality $x + 1 < x$ holds for
at least one integer" as a proposition with the universal quantifier:

$$

=== existential quantifier
an *existential quantifier* allow us to make statements about _some objects_ in
a domain. for example:

- *some* elephants are scared of mice
- *there exist* integers $a$, $b$, and $c$ such that the equality
  $a^2 + b^2 = c^2$ is true
- *there is at least one* person who did better than john on the midterm

\
given a propositional function $P(x)$, we express the existential quantification
of $P(x)$ as $exists x thin P(x)$.

== 

#pagebreak()
= activities
== prove: $exists x thin [P(x) or Q(x)] equiv exists x thin P(x) or exists x Q(x)$

#import "conf.typ": conf
#show: conf.with(date: datetime(year: 2025, month: 9, day: 17))

#let roi(rule, tautology) = {
  grid(
    columns: (1fr, 1fr),
    align: center,
    $"rule:" #rule$, $"tautology:" #tautology$,
  )
}

= rules of inference

we use rules of inference to _formally construct valid arguments and proofs_. it
is similar to *logical equivalence* where we rewrite and simplify single
statements, we use *rules of inference* to combine multiple known truths (or
*premises*) to deduct new knowledge.

== terminology
- *conjecture*: a statement that is thought to be true.
- *proof*: a valid argument that establishes the truth of a statement (like a
  conjecture).
- *theorem*: a conjecture that is proven.
- *argument*: a sequence of statements (or *premises*) that ends with a
  conclusion.
- *rules of inference*: logically valid ways to draw new conclusions by
  combining known truths from a *tautology*.

\
a *formal proof* consists of a sequence of statements, starting with the
premises (axioms), and ending with a conclusion; where each step logically
follows from the preceding ones.

== key rules of inference
these are the most often used rules of inference. each one consists of a
tautology, logical form, and a given example in plain words.

=== modus ponens (law of detatchment)
if $p -> q$ is true and $p$ is also true, then $q$ must be true.

\
#roi(
  $p -> q, p tack.r q$,
  $(p and (p -> q)) -> q$,
)

\
- *premise 1*: if it is raining ($p$), then the grass will be wet ($q$).
- *premise 2*: it is raining $p$.
- *conclusion*: therefore, the grass is wet ($therefore q$).

=== modus tollens (the law of contrapositive)
it is like the reverse of *modus ponens*, if $p -> q$ is true, but $q$ is false,
then $p$ must be false.

\
#roi(
  $p -> q, not q tack.r not p$,
  $(not q and (p -> q)) -> not p$,
)

\
- *premise 1*: if i have a cat ($p$), then i buy cat food ($q$).
- *premise 2*: i did not buy cat food ($not q$).
- *conclusion*: therefore, i do not have a cat ($therefore not p$).

=== hypothetical syllogism (chain rule)
we can combine two _if ... then ..._ chains together.

\
#roi(
  $p -> q, q -> r tack.r p -> r$,
  $((p -> q) and (q -> r)) -> (p -> r)$,
)

\
- *premise 1*: if i study hard ($p$), then i will get a good grade ($q$).
- *premise 2*: if i get a good grade ($q$), then my parents will be happy ($r$).
- *conclusion*: therefore, if i study hard ($p$), then my parents will be happy
  ($r$). ($therefore p -> r$)

=== disjunctive syllogism (elimination)
in an _or_ statement, for the whole statement to be true, if one choice is
false, then the other must be true.

\
#roi(
  $p or q, not p tack.r q$,
  $((p or q) and not p) -> q$,
)

\
- *premise 1*: i will eat cake ($p$) or i will eat ice cream ($q$).
- *premise 2*: i will not eat cake ($not p$).
- *conclusion*: therefore, i will eat ice cream ($therefore q$).

=== addition
if something is true, you can make a bigger _or_ statement with it, and it will
still be true.

\
#roi(
  $p tack.r p or q$,
  $p -> (p or q)$,
)

\
- *premise 1*: the sky is blue ($p$).
- *conclusion*: therefore, the sky is blue ($p$) or unicorns are real ($q$).
  ($therefore p or q$)

=== simplification
if two things are true together, then each one must be true by itself.

\
#roi(
  $p and q tack.r p$,
  $(p and q) -> p$,
)

\
- *premise 1*: it is sunny ($p$) and it is warm ($q$).
- *conclusion*: it is sunny ($therefore p$).

=== conjunction
if two separate things are true, we can combine them with _and_. it is the
opposite of *simplification*.

\
#roi(
  $p, q tack.r p and q$,
  $((p) and (q)) -> (p and q)$,
)

\
- *premise 1*: i have a pencil ($p$).
- *premise 2*: i have paper ($q$).
- *conclusion*: therefore, i have a pencil ($p$) and paper ($p$).
  ($therefore p and q$)

=== resolution
we use resolution to combine two _or_ statements and cancel out the conflicting
part.

\
#roi(
  $p or q, not p or r tack.r q or r$,
  $((p or q) and (not p or r)) -> (q or r)$,
)

\
- *premise 1*: we will go to the park ($p$) or we will go to the cinema ($q$).
- *premise 2*: we will not go to the park ($not p$) or we will buy popcorn
  ($r$).
- *conclusion*: ignore the conflicting part, we will go to the cinema ($q$) or
  we will buy popcorn ($r$).

== rules of inference for quantified statements

we also have rules of inferences for statements with $forall$ and $exists$. for
each quantifier, we have a *instantiation* rule and *generalization* rule. in
simple words, *instantiation* is going from a general idea to a specific
example; and *generalization* is going from specific examples to a general idea.

=== universal instantiation (ui)
if something is true for _everything_ in a domain, then it must be true for _any
specific one_ you pick from it.

\
$
  exists x P(x) tack.r P(c)
$

\
- *premise*: all cats ($forall x$) are cute ($P(x)$).
- *conclusion*: therefore, my cat whiskers ($c$) is cute ($P(c)$).

=== universal generalization (ug)
if something is true for a totally _arbitrary and generic_ individual, then it
is true for _everything_. the individual can't have any special properties.

\
$
  P(c) "for an arbitrary" c tack.r forall x P(x)
$

\
- *premise*: let $n$ be any integer whatsoever. $n$ must be even or odd.
- *conclusion*: since $n$ does not have any special property, all integers
  $forall x in QQ$ are either even or odd.

=== existential instantiation (ei)
if there exists at least one thing with a special property, we can give it a
temporary (new) name so we can reason with it.

\
$
  exists x P(x) tack.r P(c) "for some new element" c
$

\
- *premise*: someone $exists x$ stole the cookie ($P(x)$).
- *conclusion*: we can call this person "cookie snatcher" ($c$), and cookie
  snatcher stole the cookie ($P(c)$).

=== existential generalization (eg)
if you can find just one specific example of something, you can say that there
exists at least one of them.

\
$
  P(c) tack.r exists x P(x)
$

- *premise*: my cat whiskers ($c$) have black fur ($P(c)$).
- *conclusion*: therefore, there exists at least one cat ($exists x$) with black
  fur ($P(x)$).

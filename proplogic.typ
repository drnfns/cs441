#import "conf.typ": conf, bi
#show: conf
#let date = datetime(year: 2025, month: 8, day: 27)

#let ttrue = text(green)[true]
#let tfalse = text(red)[false]

= propositional logic

a _proposition_ is a precice statement that is either #text(green)[true] ($top$) or #text(red)[false] ($bot$), but not both. for example:
- 2 + 2 = 4 (#ttrue)
- all dogs have 3 legs (#tfalse)
- $x^2 < 0$ (#tfalse)

\
however, not all statements are propositions. for example:
- eliana is cool
  - _cool_ is a subjective term.
- $x^3 < 0$
  - #ttrue if $x < 0$, #tfalse otherwise.
- springfield is the capital
  - #ttrue in illinois, #tfalse in massachusetts.

== logical connectives
=== $not$ negation

the _negation_ of a proposition is #ttrue _iff_ the proposition is #tfalse.

- $not bot = top$
- $not top = bot$

=== $and$ conjunction

the _conjunction_ of two propositions is #ttrue _iff_ *both* propositions are #ttrue.

- $top and top = top$
- $top and bot = bot$
- $bot and bot = bot$

=== $or$ disjunction

the _disjunction_ of two propositions is #ttrue _iff_ *at least one* proposition is #ttrue.

- $top or top = top$
- $top or bot = top$
- $bot or bot = bot$

=== $xor$ exclusive disjunction

the _exclusive disjunction_ (or _xor_) of two propositions is #ttrue _iff_ *exactly one* proposition is #ttrue.

- $top xor top = bot$
- $top xor bot = top$
- $bot xor bot = bot$

=== $->$ implication

the _implication_ $p -> q$ is #tfalse if $p$ is #ttrue, and $q$ is #tfalse; $p -> q$ is #ttrue otherwise. hint: $p$ is called the _hypothesis_, and $q$ is called the conclusion.

- $top -> top = top$
- $top -> bot = bot$
- $bot -> top = top$
- $bot -> bot = top$

=== $<->$ biconditional

the #bi[_biconditional_] $p <-> q$ is #ttrue _iff_ $p$ and $q$ *assume the same* truth value.

- $top <-> top = top$
- $top <-> bot = bot$
- $bot <-> top = bot$
- $bot <-> bot = top$

== logic operators order

+ $not$ negation
  - $not q or r$ means $(not q) or r$, not $not (q or r)$
+ $and$ conjunction
+ $or$ disjunction
  - $q and r or s$ means $(q and r) or s$, not $q and (r or s)$
+ $->$ implication
  - $q and r -> s$ means $(q and r) -> s$, not $q and (r -> s)$
+ $<->$ biconditional

#align(center + bottom)[_more on the next page_]
#pagebreak()

== complex example

proposition: $(p and q) -> not r$. we can break this down into smaller parts, and make a truth table:

#table(
  columns: (auto, 1fr, 1fr, 1fr),
  table.header($p, q, r$, $p and q$, $not r$, $(p and q) -> not r$),
  [$top$ $top$ $top$], $top$, $bot$, $bot$,
  [$top$ $top$ $bot$], $top$, $top$, $top$,
  [$top$ $bot$ $top$], $bot$, $bot$, $top$,
  [$top$ $bot$ $bot$], $bot$, $top$, $top$,
  [$bot$ $top$ $top$], $bot$, $bot$, $top$,
  [$bot$ $top$ $bot$], $bot$, $top$, $top$,
  [$bot$ $bot$ $top$], $bot$, $bot$, $top$,
  [$bot$ $bot$ $bot$], $bot$, $top$, $top$,
)

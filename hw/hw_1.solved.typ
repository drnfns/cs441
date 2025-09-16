#import "conf.typ": conf
#show: conf.with(id: "alj213", name: "Alex Jin", title: "hw_1", date: datetime(
  year: 2025,
  month: 9,
  day: 3,
))


= Problem 1
Which of these sentences are propositions? What are the truth values of those
that are propositions?
+ Boston is the capital of Massachusetts.
+ Miami is the capital of Florida.
+ $2 + 3 = 5$.
+ $5 + 7 = 10$.
+ $x + 2 = 11$.
+ Answer this question.

== Answer
The statements from _a_ to _d_ are valid propositions. However, not all of them
are true.
+ True
+ False, the capital of FL is Tallahassee.
+ True
+ False, $5 + 7 = 12$
+ Not a proposition since we don't know the value of $x$.
+ Not a proposition, it is an instruction.

= Problem 2
Let $p$, $q$, and $r$ be the propositions:
- $p$: You have the flu.
- $q$: You miss the final examination.
- $r$: You pass the course.

Express each of these propositions as an English sentence.
+ $p -> q$
+ $not q <-> r$
+ $q -> not r$
+ $p or q or r$
+ $(p -> not r) or (q -> not r)$
+ $(p and q) or (not q and r)$


== Answer
+ You miss the final examination if you have the flu.
+ You will pass the course if and only if you don't miss the final examination.
+ If you miss the final examination, you will not pass the course.
+ You have the flu, or you miss the final examination, or you pass the course.
+ If you have the flu and you miss the final examination, then you do not pass
  the course.
  - simplified: $(p and q) -> not r$ (work below)
+ You have the flu and you miss the final examination, or you don't miss the
  final examination and you pass the course.

== Work

Showing that $(p -> not r) or (q -> not r) equiv (p and q) -> not r$:

We can substitute $p -> not r$ and $q -> not r$ and the other way around since
$p -> q equiv not p or q$.

$
      (p -> not r) & or (q -> not r) \
  (not p or not r) & or (not q or not r) && "(substitution)" \
             not p & or not q or not r \
     not (p and q) & or not r            && not p or not q equiv not (p and q) \
         (p and q) & -> not r            && "(substitution)"
$

= Problem 3
Let $p$, $q$, and $r$ be the propositions:
- $p$: You get an A on the final exam.
- $q$: You do every exercise in this book.
- $r$: You get an A in this class

Write these propositions using $p$, $q$, and $r$ and logical connectives
(including negations).
+ You get an A in this class, but you do not do every exercise in this book.
+ You get an A on the final, you do every exercise in this book, and you get an
  A in this class.
+ To get an A in this class, it is necessary for you to get an A on the final.
+ You get an A on the final, but you don't do every exercise in this book;
  nevertheless, you get an A in this class.
+ Getting an A on the final and doing every exercise in this book is sufficient
  for getting an A in this class.
+ You will get an A in this class if and only if you either do every exercise in
  this book or you get an A on the final.

== Answer
+ $r and not q$
+ $p and q and r$
+ $r -> p$
+ $p and not q and r$
+ $(p and q) -> r$
+ $(p or q) <-> r$

= Problem 4
Determine whether these biconditionals are true or false.
+ $2 + 2 = 4$ if and only if $1 + 1 = 2$.
+ $1 + 1 = 2$ if and only if $2 + 3 = 4$.
+ $1 + 1 = 3$ if and only if monkeys can fly.
+ $0 > 1$ if and only if $2 > 1$.

== Answer
+ True; $2 + 2 = 4 equiv top$, $1 + 1 = 2 equiv top$, $top <-> top = top$
+ False; $1 + 1 = 2 equiv top$, $2 + 3 = 4 equiv bot$, $top <-> bot = bot$
+ True; $1 + 1 = 3 equiv bot$, $"monkeys can fly" equiv bot$,
  $bot <-> bot = top$
+ False; $0 > 1 equiv bot$, $2 > 1 equiv top$, $bot <-> top = bot$

= Problem 5
Determine whether each of these conditional statements is true or false.
+ If $1 + 1 = 3$, then unicorns exist.
+ If $1 + 1 = 3$, then dogs can fly.
+ If $1 + 1 = 2$, then dogs can fly.
+ If $2 + 2 = 4$, then $1 + 2 = 3$.

== Answer
+ True; $1 + 1 = 3 equiv bot$, $"unicorns exist" equiv bot$, $bot -> bot = top$
+ True; $1 + 1 = 3 equiv bot$, $"dogs can fly" equiv bot$, $bot -> bot = top$
+ False; $1 + 1 = 2 equiv top$, $"dogs can fly" equiv bot$, $top -> bot = bot$
+ True; $2 + 2 = 4 equiv top$, $1 + 2 = 3 equiv top$, $top -> top = top$

= Problem 6
For each of these sentences, determine whether an inclusive or, or an exclusive
or, is intended. Explain your answer.
+ Experience with C++ or Java is required.
+ Lunch includes soup or salad.
+ To enter the country you need a passport or a voter registration card.
+ Publish or perish.

== Answer
+ Inclusive or; we can have both knowledge with C++ and Java.
+ Exclusive or; the restaurant only let you choose one for lunch.
+ Inclusive or; you can present both to enter the country.
+ Exclusive or; you can't do both at the same time.


= Problem 7
State the converse, contrapositive, and inverse of each of these conditional
statements.
+ If it snows tonight, then I will stay at home.
+ I go to the beach whenever it is a sunny summer day.
+ When I stay up late, it is necessary that I sleep until noon.

== Answer
+ *Converse*: If I stay at home, it will snow tonight. \
  *Contrapositive*: If I don't stay at home, it won't snow tonight. \
  *Inverse*: If it doesn't snow tonight, then I won't stay at home.
+ *Converse*: Whenever I go to the beach, it is a sunny summer day. \
  *Contrapositive*: If I don't go to the beach, then it is not a sunny summer
  day. \
  *Inverse*: If it is not a sunny summer day, then I don't go to the beach.
+ *Converse*: Whenever I sleep until noon, it is necessary that I stay up late.
  \
  *Contrapositive*: Whenever I don't sleep until noon, it isn't necessary that I
  stay up late. \
  *Inverse*: When I don't stay up late, it isn't necessary that I sleep until
  noon.

= Problem 8
How many rows appear in a truth table for each of these compound propositions?
+ $(q -> not p) or (not p -> not q)$
+ $(p and not t) and (p or not s)$
+ $(p -> r) or (not s -> not t) or (not u -> v)$
+ $(p and r and s) or (q and t) or (r and not t)$

== Answer
+ 4 rows for 2 propositions $q, p$ (2 bits, $2^2$)
+ 8 rows for 3 propositions $p, t, s$ (3 bits, $2^3$)
+ 64 rows for 6 propositions $p, r, s, t, u, v$ (6 bits, $2^6$)
+ 32 rows for 5 propositions $p, q, r, s, t$ (5 bits, $2^5$)

= Problem 9
Construct a truth table for $((p -> q) -> r) -> s$.

== Answer
#table(
  columns: (auto, 1fr, 1fr, 1fr),
  table.header($p, q, r, s$, $p -> q$, $(p -> q) -> r$, $((p -> q) -> r) -> s$),
  [$bot bot bot bot$], $top$, $bot$, $top$,
  [$bot bot bot top$], $top$, $bot$, $top$,
  [$bot bot top bot$], $top$, $top$, $bot$,
  [$bot bot top top$], $top$, $top$, $top$,
  [$bot top bot bot$], $top$, $bot$, $top$,
  [$bot top bot top$], $top$, $bot$, $top$,
  [$bot top top bot$], $top$, $top$, $bot$,
  [$bot top top top$], $top$, $top$, $top$,
  [$top bot bot bot$], $bot$, $top$, $bot$,
  [$top bot bot top$], $bot$, $top$, $top$,
  [$top bot top bot$], $bot$, $top$, $bot$,
  [$top bot top top$], $bot$, $top$, $top$,
  [$top top bot bot$], $top$, $bot$, $top$,
  [$top top bot top$], $top$, $bot$, $top$,
  [$top top top bot$], $top$, $top$, $bot$,
  [$top top top top$], $top$, $top$, $top$,
)

= Challenge 1

*Fuzzy logic* is used in artificial intelligence. In fuzzy logic, a proposition
has a truth value that is a number between 0 and 1, inclusive. A proposition
with a truth value of 0 is false and one with a truth value of 1 is true. Truth
values that are between 0 and 1 indicate varying degrees of truth. For instance,
the truth value 0.8 can be assigned to the statement "Fred is happy," because
Fred is happy most of the time, and the truth value 0.4 can be assigned to the
statement "John is happy," because John is happy slightly less than half the
time.

== Question
The truth value of the conjunction of two propositions in fuzzy logic is the
minimum of the truth values of the two propositions. What are the truth values
of the statements "Fred and John are happy" and "Neither Fred nor John is
happy"?

== Answer

Let:
- $p equiv "Fred is happy" = 0.8$
- $q equiv "John is happy" = 0.4$

Since the truth value would be $min(p, q)$ for the conjunction of propositions
$p$ and $q$, to get the truth value of $p and q$, we just do $min(0.8, 0.4)$,
which is 0.4.

For the second part, we want to get the truth value of $not p and not q$. Since
fuzzy logic is from 0 to 1 inclusive, we can just subtract the truth value from
1 to get the inverse for the $not$ operation.

$
  not p equiv 1 - 0.8 = 0.2 \
  not q equiv 1 - 0.4 = 0.6 \
  not p and not q equiv min(not p, not q) = min(0.2, 0.6) = 0.2
$


#align(center)[#rect[$
          p and q & = 0.4 \
  not p and not q & = 0.2
$]]

= Challenge 2
Is the assertion "This statement is false" a proposition?

== Answer
The assertion "This statement is false" is not a proposition, since a
proposition requires it to be either true or false (or in fuzzy logic, a number
from 0 to 1 inclusive).

If the statement is false, then what it states must be false, leading to a
contradiction; and if the statement is true, then the statement will also
contradict itself since it states that itself is false.

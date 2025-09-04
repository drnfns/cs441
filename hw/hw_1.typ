#import "conf.typ": conf
#show: conf.with(id: "Username:", name: "Name:", title: "hw_1")

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

= Problem 4
Determine whether these biconditionals are true or false.
+ $2 + 2 = 4$ if and only if $1 + 1 = 2$.
+ $1 + 1 = 2$ if and only if $2 + 3 = 4$.
+ $1 + 1 = 3$ if and only if monkeys can fly.
+ $0 > 1$ if and only if $2 > 1$.

== Answer

= Problem 5
Determine whether each of these conditional statements is true or false.
+ If $1 + 1 = 3$, then unicorns exist.
+ If $1 + 1 = 3$, then dogs can fly.
+ If $1 + 1 = 2$, then dogs can fly.
+ If $2 + 2 = 4$, then $1 + 2 = 3$.

== Answer

= Problem 6
For each of these sentences, determine whether an inclusive or, or an exclusive
or, is intended. Explain your answer.
+ Experience with C++ or Java is required.
+ Lunch includes soup or salad.
+ To enter the country you need a passport or a voter registration card.
+ Publish or perish.

== Answer

= Problem 7
State the converse, contrapositive, and inverse of each of these conditional
statements.
+ If it snows tonight, then I will stay at home.
+ I go to the beach whenever it is a sunny summer day.
+ When I stay up late, it is necessary that I sleep until noon.

== Answer

= Problem 8
How many rows appear in a truth table for each of these compound propositions?
+ $(q -> not p) or (not p -> not q)$
+ $(p and not t) and (p or not s)$
+ $(p -> r) or (not s -> not t) or (not u -> v)$
+ $(p and r and s) or (q and t) or (r and not t)$

== Answer

= Problem 9
Construct a truth table for $((p -> q) -> r) -> s$.

== Answer

= Challenge 1

Fuzzy logic is used in artificial intelligence. In fuzzy logic, a proposition
has a truth value that is a number between 0 and 1, inclusive. A proposition
with a truth value of 0 is false and one with a truth value of 1 is true. Truth
values that are between 0 and 1 indicate varying degrees of truth. For instance,
the truth value 0.8 can be assigned to the statement "Fred is happy," because
Fred is happy most of the time, and the truth value 0.4 can be assigned to the
statement "John is happy," because John is happy slightly less than half the
time.

The truth value of the conjunction of two propositions in fuzzy logic is the
minimum of the truth values of the two propositions. What are the truth values
of the statements "Fred and John are happy" and "Neither Fred nor John is
happy"?

== Answer

= Challenge 2
Is the assertion "This statement is false" a proposition?

== Answer

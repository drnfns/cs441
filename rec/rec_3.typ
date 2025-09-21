#import "conf.typ": conf
#show: conf.with(id: "Username:", name: "Name:", title: "rec_3", date: datetime(
  year: 2025,
  month: 9,
  day: 18,
))

= Problem 1
Express each of these system specifications using predicates, quantifiers and
logical connectives. Define any propositional functions that you use, and choose
predicates that allow as many concepts as possible to be represented in the
logic.

+ The e-mail address of every user can be retrieved whenever the archive
  contains at least one message.
+ At least one console must be accessible during every type of fault condition.
+ There are at least two paths connecting every two distinct endpoints on the
  network.

== Answer

= Problem 2
Assume the domain consists of all CS 441 students. Translate these statements
using quantifiers.

+ Lina has best performance in the class. \ Let $B(x, y)$ represent the
  statement "$x$ performs in class better than $y$."
+ Only one student was nominated by the class to solve a recitation problem on
  the board. \ Let $N(x, y)$ represent the statement, "$x$ nominated $y$ to
  solve a recitation problem on the board"

== Answer

= Problem 3
Let $S(x) equiv$ "$x$ is a CS 441 student", $T(x) equiv$ "$x$ is a CS 441 TA",
$E(x, y) equiv$ "$x$ enjoys CS 441 more than $y$", and $A(x, y) equiv$ "$x$
attends recitation more than $y$". Assume the domain for each of these
propositional functions consists of all the students at Pitt. Translate the
logical expressions into _natural_ English sentences.

+ $exists x thin (S(x) and forall y thin (T(y) -> A(x, y)))$
+ $exists x thin (T(x) and forall y thin ((T(y) and x != y) -> E(x, y)))$

== Answer

= Problem 4
Use rules of inference to show that the hypotheses imply the conclusion.
Consider the domains and propositions given.

+ Hypotheses: "It rained today"; "If it rained today, the festival will not
  occur"; and "If the festival does not occur, I am sad". Conclusion: "I am
  sad". \ Let $r equiv$ "It rained today", $f equiv$ "The festival occurs",
  $s equiv$ "I am sad".
+ Hypotheses: "The farm will not make profit"; "If the chickens lay eggs and the
  price of car insurance doesn't increase, then the eggs are sold and the farm
  makes profit"; "Either the chickens lay eggs or a new car will be bought".
  Conclusion: "The price of car insurance will increase or a new car will be
  bought". \ Let $c equiv$ "The chickens lay eggs", $e equiv$ "Eggs will be
  sold", $p equiv$ "The farm will make profit", $n equiv$ "A new car will be
  bought", $t equiv$ "The price of car insurance will increase".
+ Hypotheses: "Somebody in CS 441 likes grilled cheese sandwiches," "All people
  are either lactose intolerant or likes ice cream," and "Every person who is
  lactose intolerant does not like grilled cheese sandwiches." Conclusion:
  "There is a person in CS 441 who likes ice cream." \ Let $C(x) equiv$ "$x$ is
  a student in CS 441", $G(x) equiv$ "$x$ likes grilled cheese sandwiches",
  $L(x) equiv$ "$x$ is lactose intolerant", $R(x) equiv$ "$x$ likes ice cream".
  Assume all domains are "all people".

== Answer

= Problem 5
Determine whether each of these arguments is valid. If an argument is correct,
what rule of inference is being used?

+ If $n$ is a real number such that $n > 1$, then $n^2 > 1$. Suppose that
  $n^2 > 1$, then $n > 1$.
+ If $n$ is a real number with $n > 3$, then $n^2 > 9$. Suppose that $n^2 <= 9$,
  then $n <= 3$.
+ If $n$ is a real number with $n > 2$, then $n^2 > 4$. Suppose that $n <= 2$,
  then $n^2 <= 4$.

== Answer

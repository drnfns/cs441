#import "conf.typ": conf
#show: conf.with(id: "alj213", name: "Alex Jin", title: "rec_1", date: datetime(
  year: 2025,
  month: 9,
  day: 4,
))

= Problem 1
Which of these sentences are propositions? What are the truth values of those
that are propositions?

+ $2 + 3 = 5$
+ Wash your hands
+ Swimming is fun
+ $2x >= x$
+ $4.3$ is an integer

== Answer
+ It is a proposition, and it is true.
+ Not a proposition.
+ Not a proposition, fun is subjective.
+ Not a proposition for all of $x$.
+ It is a proposition, it is false.

= Problem 2
Let $p$ and $q$ be the propositions "Swimming at the shore is allowed" and
"Sharks have been spotted near the shore," respectively. Express each of these
compound propositions as an English sentence.

+ $not q and not p$
+ $not q -> p$
+ $p <-> not q$

== Answer
+ No sharks have been spotted near the shore, nevertheless, swimming at the
  shore is not allowed.
+ If no sharks have been spotted near the shore, then swimming at the shore is
  allowed.
+ Swimming at the shore is allowed if and only if sharks have not been spotted
  near the shore.

= Problem 3
For each of the following sentences, determine whether an inclusive or, or an
exclusive or, is intended. Explain your answer.

+ Coffee or tea comes with dinner
+ A password must have at least three digits or be at least eight characters
  long.
+ The prerequisite for the course is a course in number theory or a course in
  cryptography.
+ You can pay using U.S. dollars or euros.

== Answer
+ Exclusive or, since restaurants only let you pick either coffee or tea as a
  drink for a meal.
+ Inclusive or. You can have both three digits and have eight characters in your
  password.
+ Inclusive or. You can have experience with both number theory and cryptography
  courses and still take this course.
+ Exclusive or. You cannot mix currencies when paying at a store.

= Problem 4
Construct a truth table for each of these compound propositions.

+ $(p or not q) -> q$
+ $(p -> q) <-> (not p or q)$
+ $(p and q) -> (p or q)$

== Answer
+ #table(
    columns: (auto, 1fr, 1fr, 1fr),
    table.header($p, q$, $not q$, $p or not q$, $(p or not q) -> q$),
    [$bot bot$], $top$, $top$, $bot$,
    [$bot top$], $bot$, $bot$, $top$,
    [$top bot$], $top$, $top$, $bot$,
    [$top top$], $bot$, $top$, $top$,
  )
+ #table(
    columns: (auto, 1fr, 0.5fr, 1fr, 1.5fr),
    table.header(
      $p, q$, $p -> q$, $not p$, $not p or q$, $(p -> q) <-> (not p or q)$
    ),
    [$bot bot$], $top$, $top$, $top$, $top$,
    [$bot top$], $top$, $top$, $top$, $top$,
    [$top bot$], $bot$, $bot$, $bot$, $top$,
    [$top top$], $top$, $bot$, $top$, $top$,
  )
+ #table(
    columns: (auto, 1fr, 1fr, 1fr),
    table.header($p, q$, $p and q$, $p or q$, $(p and q) -> (p or q)$),
    [$bot bot$], $bot$, $bot$, $top$,
    [$bot top$], $bot$, $top$, $top$,
    [$top bot$], $bot$, $top$, $top$,
    [$top top$], $top$, $top$, $top$,
  )

= Problem 5
State the converse, contrapositive, and inverse of each of the following
conditional statements.

+ I will wear a sweater only if it is below freezing.
+ I come to class whenever there is a quiz.
+ If I have a connecting flight, it is necessary for me to fly business class.

== Answer
+ *Converse*: It is below freezing only if I will wear a sweater. \
  *Contrapositive*: It is not below freezing only if I won't wear a sweater. \
  *Inverse*: I won't wear a sweater only if it isn't below freezing.
+ *Converse*: There is a quiz whenever I come to class. \
  *Contrapositive*: There isn't a quiz whenever I don't come to class. \
  *Inverse*: I don't come to class whenever there isn't a quiz.
+ *Converse*: If I fly business class, it is necessary for me to have a
  connecting flight. \
  *Contrapositive*: If I don't fly business class, it isn't necessary for me to
  have a connecting flight. \
  *Inverse*: if I don't have a connecting flight, it isn't necessary for me to
  fly business class.

= Problem 6
Determine whether each of the following conditional statements is true or false.
Explain your answers.

+ If $1 + 1 = 2$ then $2 + 2 = 5$.
+ If $1 + 1 = 3$ then $2 + 2 = 4$.
+ If $1 + 1 = 2$ then $2 + 2 = 4$.
+ If monkeys can fly then $1 + 1 = 3$.

== Answer
+ False. $p equiv 1 + 1 = 2 equiv top$, $q equiv 2 + 2 = 5 equiv bot$,
  $top -> bot = bot$
+ True. $p equiv 1 + 1 = 3 equiv bot$, $q equiv 2 + 2 = 4 equiv top$,
  $bot -> top = top$
+ True. $p equiv 1 + 1 = 2 equiv top$, $q equiv 2 + 2 = 4 equiv top$,
  $top -> top = top$
+ True. $p equiv "monkeys can fly" equiv bot$, $q equiv 1 + 1 = 3 equiv bot$,
  $bot -> bot = top$

= Problem 7
Determine whether each of the following biconditional statements is true or
false. Explain your answers.

+ $1 + 1 = 2$ if and only if $2 + 2 = 5$.
+ $1 + 1 = 3$ if and only if $2 + 2 = 4$.
+ $1 + 1 = 2$ if and only if $2 + 2 = 4$.
+ Monkeys can fly if and only if $1 + 1 = 3$.

== Answer
+ False. $p equiv 1 + 1 = 2 equiv top$, $q equiv 2 + 2 = 5 equiv bot$,
  $top <-> bot = bot$
+ False. $p equiv 1 + 1 = 3 equiv bot$, $q equiv 2 + 2 = 4 equiv top$,
  $bot <-> top = bot$
+ True. $p equiv 1 + 1 = 2 equiv top$, $q equiv 2 + 2 = 4 equiv top$,
  $top <-> top = top$
+ True. $p equiv "monkeys can fly" equiv bot$, $q equiv 1 + 1 = 3 equiv bot$,
  $bot <-> bot = top$

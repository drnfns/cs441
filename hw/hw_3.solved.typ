#import "conf.typ": conf
#show: conf.with(
  id: "alj213",
  name: "Alex Jin",
  title: "hw_3",
  date: datetime(
    year: 2025,
    month: 9,
    day: 17,
  ),
)

= Problem 1
Let $P(x, y)$ be the statement "Student $x$ has taken class $y$, "where the
domain for $x$ consists of all students in your class and $y$ consists of all
computer science courses at your school. Express each of these quantifications
in english.

+ $exists x exists y thin P(x, y)$
+ $exists x forall y thin P(x, y)$
+ $forall x exists y thin P(x, y)$
+ $exists y forall x thin P(x, y)$
+ $forall y exists x thin P(x, y)$
+ $forall x forall y thin P(x, y)$

== Answer
+ There is at least one student in my class that took at least one of the
  computer science courses at my school.
+ There is at least one student in my class that has taken all of the computer
  science courses at my school.
+ All the students in my class has taken at least one of the computer science
  courses at my school.
+ There is at least one computer science course at my school that has been taken
  by all the students in my class.
+ All of the computer science courses has been taken by at least one student in
  my class.
+ All of the students in my class have taken all of the computer science courses
  at my school.

= Problem 2
Let $Q(x, y)$ be the statement "Student $x$ has been a contestant on quiz show
$y$." Express such of these sentences in terms of $Q(x, y)$, quantifiers, and
logical connectives, where the domain for $x$ consists of all students at your
school and for $y$ consists of all quiz shows on television.

+ There is a student at your school who has been a contestant on a television
  quiz show.
+ No student at your school has ever been a contestant on a television quiz
  show.
+ There is a student at your school who has been a contestant on _Jeopardy!_ and
  on _Wheel of Fortune_.
+ Every television quiz show has had a student from your school as a contestant.
+ At least two students from your school have been contestants on _Jeopardy!_.

== Answer
+ $exists x exists y thin Q(x, y)$
+ $not (exists x exists y thin Q(x, y))$
+ $exists x thin (Q(x, "\"Jeopardy!\"") and Q(x, "\"Wheel of Fortune\""))$
+ $forall y exists x thin Q(x, y)$
+ $exists x_1 exists x_2 thin ((x_1 equiv.not x_2) and Q(x_1, "\"Jeopardy!\"") and Q(x_2, "\"Jeopardy!\""))$

= Problem 3
Express each of these statements using predicates, quantifiers, logical
connectives, and mathematical operators where the domain consists of all
integers.

+ The product of two negative integers is positive.
+ The average of two positive integers is positive.
+ The difference of two negative integers is not necessarily negative.
+ The absolute value of the sum of two integers does not exceed the sum of the
  absolute values of these integers.

== Answer

+ $forall x forall y thin (((x < 0) and (y < 0)) -> (x y > 0))$
+ $forall x forall y thin (((x > 0) and (y > 0)) -> ((x + y) / 2 > 0))$
+ $exists x exists y thin (((x < 0) and (y < 0)) and (x - y >= 0))$
+ $forall x forall y thin (|x + y| <= |x| + |y|)$

= Problem 4
Find a common domain for the variables $x$, $y$, and $z$ for which the statement
$forall x forall y thin ((x != y) -> forall z thin ((z = x) or (z = y)))$ is
true and another domain for which it is false.

== Answer
- *True*: A set that contains just one or item. Since $(x != y)$ (the left side
  of the implication) is always false, this statement is always true.
- *False*: Natural numbers. Two different numbers $x$ and $y$ does not imply
  that all rest of the numbers is either $x$ or $y$.

= Problem 5
What rule of inference is used in each of these arguments?

+ Kangaroos live in Australia and are marsupials. \
  Therefore, kangaroos are marsupials.
+ It is either hotter than 100 degrees today or the pollution is dangerous. \
  It is less than 100 degrees outside today. \
  Therefore, the pollution is dangerous.
+ Linda is an excellent swimmer. \
  If Linda is an excellent swimmer, then she can work as a lifeguard. \
  Therefore, Linda can work as a lifeguard.
+ Steve will work at a computer company this summer. \
  Therefore, this summer Steve will work at a computer company or he will be a
  beach bum.
+ If I work all night on this homework, then I can answer all the exercises. \
  If I answer all the exercises, I will understand the material. \ Therefore, if
  I work all night on this homework, then I will understand the material.


== Answer
+ Simplification, $(p and q) -> q$
+ Disjunctive syllogism, $((p or q) and not p) -> q$
+ Modus ponens, $(p and (p -> q)) -> q$
+ Addition, $p -> (p or q)$
+ Hypothetical syllogism, $((p -> q) and (q -> r)) -> (p -> r)$

= Problem 6
For each of these arguments, explain which rules of inference are used for each
step.

+ "Linda, a student in this class, owns a red convertible. Everyone who owns a
  red convertible has gotten at least one speeding ticket. Therefore, someone in
  this class has gotten a speeding ticket."
+ "Each of five roommates, Melissa, Aaron, Ralph, Veneesha, and Keeshawn, has
  taken a course in discrete mathematics. Every student who has taken a course
  in discrete mathematics can take a course in algorithms. Therefore, all five
  roommates can take a course in algorithms next year."
+ "All movies produced by John Sayles are wonderful. John Sayles produced a
  movie about coal miners. Therefore, there is a wonderful movie about coal
  miners."
+ "There is someone in this class who has been to France. Everyone who goes to
  France visits the Louvre. Therefore, someone in this class has visited the
  Louvre."

== Answer
+ Linda is in this class and she owns a red convertible. Therefore, she must
  have gotten at least one speeding ticket, by universal instantiation from the
  second statement. Since Linda is in this class, we use existential
  instantiation to say that at least one person in the class has gotten a
  speeding ticket.
+ Since all five roommates (our domain) has taken discrete mathematics, we use
  universal generalization to say that all of them can pass the predicate that
  $P(x) equiv$ "$x$ has taken a course in discrete mathematics". Since any
  student that has taken discrete mathematics can take an algorithm course, all
  of our roommates can take it by modus ponens.
+ We first use modus ponens to say that the movie John sayles produced about
  coal miners is wonderful. Then, we use existential generalization to say that
  there is a wonderful movie about coal miners.
+ We use hypothetical syllogism and existential generalization.


= Problem 7
For each of these arguments determine whether the argument is correct or
incorrect and explain why.

+ Everyone enrolled in the university has lived in a dormitory. Mia has never
  lived in a dormitory. Therefore, Mia is not enrolled in the university.
+ A convertible car is fun to drive. Isaac's car is not a convertible.
  Therefore, Isaac's car is not fun to drive.
+ Quincy likes all action movies. Quincy likes the movie _Eight Men Out_.
  Therefore, _Eight Men Out_ is an action movie.
+ All lobstermen set at least a dozen traps. Hamilton is a lobsterman. Therefore
  Hamilton sets at least a dozen traps.

== Answer
+ It is correct. It is a universal statement (everyone), so if someone who
  haven't lived in a dormitory, they are not in the university.
+ Incorrect. There can exist a car where it is not a convertible and it is fun
  to drive. The first statement is only existential.
+ Incorrect. Quincy can like movies that is not the action genre.
+ Correct. We can deduct that by modus ponens.

= Problem 8
What is wrong with this statement? Let $S(x, y)$ be "$x$ is shorter than $y$."
Given the premise $exists s thin S(s, "Max")$, it follows that
$S("Max", "Max")$. Then by existential generalization it follows that it follows
that $exists x thin S(x, x)$, so that someone is shorter than himself.

== Answer
We can't say that "Max is shorter than Max", since we can't select any arbitrary
value for an existential instantiation. So the statement that $S("Max", "Max")$
is wrong, and the following existential generalization is also wrong.

= Problem 9
Use rules of inference to show that if $forall x thin (P(x) or Q(x))$ and
$forall x thin ((not P(x) and Q(x)) -> R(x))$ are true, then
$forall x (not R(x) -> P(x))$ is also true, where the domains of all quantifiers
are the same.

== Answer

We have:
$
                 P(c) or Q(c) wide & "universal instantiation" \
  (not P(c) and Q(c)) -> R(c) wide & "universal instantiation" \
$

We assume $not R(c)$:
$
  (not P(c) and Q(c)) -> R(c) wide \
                     not R(c) wide \
      not (not P(c) and Q(c)) wide & "modus tollens" \
             P(c) or not Q(c) wide & "demorgan, double negation"
$

Bringing it back:
$
  P(c) or not Q(c) wide \
      P(c) or Q(c) wide \
              P(c) wide & "resolution"
$

We now have proved $P(c)$ by assuming $not R(c)$. By universal generalization,
since we have $P(c)$ for an arbitrary $c$, we can say that
$forall x thin (not R(x) -> P(x))$ is true. $square.filled$

= Challenge 1
Show that $forall x thin P(x) or forall x thin Q(x)$ and
$forall x forall y thin (P(x) or Q(y))$, where all quantifiers have the same
nonempty domain, are logically equivalent. (The new variable $y$ is used to
combine the quantifications correctly.)

== Answer

We need to prove that
$(forall x thin P(x) or forall x thin Q(x)) <=> (forall x forall y thin (P(x) or Q(y)))$.

*Direction 1*:
$(forall x P(x) or forall x Q(x)) -> (forall x forall y (P(x) or Q(y)))$

We assume that $forall x P(x) or forall x Q(x)$, which gives us two cases:

Case 1:
$
          P(c) wide & "universal instantiation" \
  P(c) or Q(d) wide & "addition"
$

Case 2:
$
          Q(c) wide & "universal instantiation" \
  Q(c) or P(d) wide & "addition"
$

Combining the results of the addition:
$
  P(c) or Q(d) wide \
  Q(c) or P(d) wide \
  P(c) or Q(d) wide & "simplification"
$

We now have $P(c) or Q(d)$, and by universal generalization, we can say that we
have $forall x forall y thin (P(x) or Q(y))$.

*Direction 2*:
$(forall x forall y thin (P(x) or Q(y))) -> (forall x thin P(x) or forall x thin Q(x))$

$
  not (forall x P(x) or forall x Q(x)) & -> not (forall x forall y (P(x) or Q(y))) wide && "contraposition"\
  exists x not P(x) and exists x not Q(x) & -> exists x exists y not (P(x) or Q(y)) wide && "negate, demorgan"\
  exists x not P(x) and exists x not Q(x) & -> exists x exists y not P(x) and not Q(y) && "demorgan again" \
  not P(c) and not Q(d) & -> not P(c) and Q(d) && "existential instantiation both sides"
$

$square.filled$

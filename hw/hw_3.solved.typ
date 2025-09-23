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
domain for both $x$ and $y$ consists of all students in your class. Express each
of these quantifications in English.

+ $exists x exists y thin P(x, y)$
+ $exists x forall y thin P(x, y)$
+ $forall x exists y thin P(x, y)$
+ $exists y forall x thin P(x, y)$
+ $forall y exists x thin P(x, y)$
+ $forall x forall y thin P(x, y)$

== Answer

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

= Problem 4
Find a common domain for the variables $x$, $y$, and $z$ for which the statement
$forall x forall y thin ((x != y) -> forall z thin ((z = x) or (z = y)))$ is
true and another domain for which it is false.

== Answer

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

= Problem 6
For each of these arguments, explain which rules of inference are used for each
step.

+ "Linda, a student in this class, owns are red convertible. Everyone who owns a
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

= Problem 8
What is wrong with this statement? Let $S(x, y)$ be "$x$ is shorter than $y$."
Given the premise $exists s thin S(s, "Max")$, it follows that
$S("Max", "Max")$. Then by existential generalization it follows that it follows
that $exists x thin S(x, x)$, so that someone is shorter than himself.

== Answer

= Problem 9
Use rules of inference to show that if $forall x thin (P(x) or Q(x))$ and
$forall x thin ((not P(x) and Q(x)) -> R(x))$ are true, then
$forall x (not R(x) -> P(x))$ is also true, where the domains of all quantifiers
are the same.

== Answer

= Challenge 1
Show that $forall x thin P(x) or forall x thin Q(x)$ and
$forall x forall y thin (P(x) or Q(y))$, where all quantifiers have the same
nonempty domain, are logically equivalent. (The new variable $y$ is used to
combine the quantifications correctly.)

== Answer

#import "conf.typ": conf
#show: conf.with(id: "alj213", name: "Alex Jin", title: "rec_2", date: datetime(
  year: 2025,
  month: 9,
  day: 10,
))

= Problem 1
Translate these statements into logic using the provided propositions.

$v equiv "The message is scanned for viruses."$ \
$s equiv "The message is marked as spam."$ \
$k equiv "The message was sent from a known system."$ \
$b equiv "The sender is blocked."$

+ The message is scanned for viruses or marked as spam.
+ A message from a blocked sender goes scanned for viruses.
+ The sender is blocked and the message is scanned for viruses only if the
  message was sent from an unknown system.
+ If the message is sent from an unknown system, either the sender is blocked or
  the message is marked for spam. In both cases, it is scanned for viruses.

== Answer
+ $v or s$
+ $b -> v$
+ $(b and v) -> not k$
+ $not k -> ((b or s) and v)$

= Problem 2
Prove the following by using *logical equivalences* (i.e., using direct
manipulation). For each step, state which single logical equivalence was used.

+ $not (p -> not q) equiv (p and q)$
+ $p -> (q -> r) equiv (p and q) -> r$

== Answer
+ $
        not (p -> not q) & equiv (p and q) \
    not (not p or not q) & equiv p and q   && wide "implication equivalence" \
                 p and q & equiv p and q   && wide "demorgan's law"
  $

+ $
            p -> (q -> r) & equiv (p and q) -> r \
        p -> (not q or r) & equiv (p and q) -> r && wide "implication equivalence" \
    not p or (not q or r) & equiv (p and q) -> r && wide "same as above" \
      not p or not q or r & equiv (p and q) -> r && wide "ungroup" \
       not (p and q) or r & equiv (p and q) -> r && wide "demorgan's law" \
           (p and q) -> r & equiv (p and q) -> r && wide "implication equivalence"
  $

= Problem 3
Use the truth tables to:

+ Show that $p or (p and q) equiv p$
+ Show that $(p and q) -> r$ and $(p -> r) and (q -> r)$ are not logically
  equivalent

== Answer
+ #table(
    columns: (auto, 1fr, 1fr, 1fr),
    table.header($p, q$, $p and q$, $p or (p and q)$, $p$),
    $bot bot$, $bot$, $bot$, $bot$,
    $bot top$, $bot$, $bot$, $bot$,
    $top bot$, $bot$, $top$, $top$,
    $top top$, $top$, $top$, $top$,
  )

+ #table(
    columns: (auto, 0.5fr, 1fr, 0.5fr, 0.5fr, 1.5fr),
    table.header(
      $p, q, r$,
      $p and q$,
      $(p and q) -> r$,
      $p -> r$,
      $q -> r$,
      $(p -> r) and (q -> r)$,
    ),
    $bot bot bot$, $bot$, $top$, $top$, $top$, $top$,
    $bot bot top$, $bot$, $top$, $top$, $top$, $top$,
    $bot top bot$, $bot$, $top$, $top$, $bot$, $bot$,
    $bot top top$, $bot$, $top$, $top$, $top$, $top$,
    $top bot bot$, $bot$, $top$, $bot$, $top$, $bot$,
    $top bot top$, $bot$, $top$, $top$, $top$, $top$,
    $top top bot$, $top$, $bot$, $bot$, $bot$, $bot$,
    $top top top$, $top$, $top$, $top$, $top$, $top$,
  )

= Problem 4
Let $M(x) equiv x$ _visits the Carnegie Mueseum_ and $A(x) equiv x$ _is an art
  student_. Let the domain of each be "all students at Pitt".

+ Translate the following statement into English. \
  $
    forall x thin [M(x) -> A(x)]
  $

+ translate the following into predicate logic. \
  "not all art students have visited the carnegie museum".

+ Explain why the statement "Some art students visit the Carnegie Museum"
  #underline[cannot] be translated as:
$
  exists x thin [A(x) -> M(x)]
$

== Answer

+ For all students at pitt, if they visit the Carnegie Museum, they are an art
  student.
+ $not (forall x thin [A(x) -> M(x)])$, which is equivalent to
  $exists x thin [A(x) and not M(x)]$
+ The proposition given indicates the relationship between art student and
  whether they visit the Carnegie Museum. It states that if they are an art
  student, they will visit the museum. However, that is not the same as the
  statement given. The correct proposition should be:
  $exists x thin [A(x) and M(x)]$, where it correctly represents the status of
  being an art student and if they visited the museum.

= Problem 5
Explain the following logical paradoxes. That is, explain why each one cannot
cannot be assigned a specific value.

+ "The next statement is true. The previous statement is false."
+ "If this sentence is true, then all statements are true."
+ Define two propositional variables as $p equiv q "is false"$, and
  $q equiv p "is false"$.

== Answer
+ These two statements contradict each other. We can first rule out the case
  that they are both true or false, since that would violate the statements. For
  the first case, we assume the first statement is true; if it is true, then
  according to the statement, the second statement will be true; however, if the
  second statement is true, then the first statement is false, which contradicts
  our assumption. For the second case, we assume the second statement is true.
  If the second statement is true, then the first statement is false. However,
  if the first statement is false, then the second statement is also false,
  which also contradicts our assumption. Therefore, we cannot assign a truth
  value to both propositions.
+ We can consider two cases: the first part of the proposition is true or false.
  In the first case, we consider that it is true, which implies the following
  proposition also have to be true in order for the whole proposition to stay
  true (since $top -> top = top$). However, that is not the case: for example,
  the statement that "I am currently on the planet saturn" is a false statement.
  Since the second part of the proposition is false, that means we have a true
  value implicating a false value ($top -> bot = bot$), which makes this
  proposition contradict our assumption (as well as itself since it states that
  all statements are true). For our second case where we consider the first part
  of the proposition as false, in order for the whole proposition to stay true,
  the second part of the proposition can either be true or false. Let's first
  consider where it is true -- however this has already been proven false
  earlier("planet saturn"). If the statement is false, however, it means that
  all statements are false, which is also false. I can make a statement like
  "The date September 10 in 2025 is a Wednesday" and it is true. Since we can't
  assign a truth value to the second statement that "all statements are true",
  we also could not assign a truth value to the entire implication.
+ Let's assume $p$ is true. If $p$ is true, then $q$ is false. If $q$ is false,
  then it implies that $p$ is true. This case stands. On the other hand, if $p$
  is false, then $q$ is true; and if $q$ is true, then $p$ is false. This case
  also stands. Since both case stands, we cannot come to a conclusion of which
  truth value can be assigned to $p$ or $q$.

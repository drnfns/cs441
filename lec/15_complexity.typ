#import "conf.typ": conf
#import "@preview/lovelace:0.3.0": pseudocode-list
#show: conf.with(date: datetime(year: 2025, month: 10, day: 29))

= complexity of algorithms
we mentioned that the growth functions like big-o, big-omega, and big-theta are
closely related to computer science -- each of them representing a upper bound,
lower bound, and tight bound. in this section we will apply these growth
functions to algorithms.

== motivation
there are a lot of algorithms that exist to solve the same problem. usually, we
want to compare the complexity between them, and figure out which one is the
most efficient. take these three algorithms for example; they all solve the
problem of summing the integers from 1 through $n$:

\
#table(
  columns: (1fr, 1fr, 1fr),
  table.header("algorithm A", "algorithm B", "algorithm C"),
  pseudocode-list[
    + sum := 0
    + *for* i:= 1 *to* n
      + sum := sum + 1
    + *return* sum
  ],
  pseudocode-list[
    + sum := 0
    + *for* i := 1 *to* n
      + *for* j := 1 *to* i
        + sum := sum + 1
    + *return* sum
  ],
  pseudocode-list[
    + sum := n \* (n + 1) / 2
    + *return* sum
  ],
)

== analysis
to find the complexity for different algorithms, we consider the amount of
operations they do. let's compare them:

\
#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  table.header("", "algorithm A", "algorithm B", "algorithm C"),
  "additions", $n$, $(n (n + 1))/2$, "1",
  "multiplications", "", "", "1",
  "divisions", "", "", "1",
  "total ops.", $n$, $(n^2)/2 + (n)/2$, "3",
)

\
as the input gets larger, some operations might take longer than others. let's
test each algorithm with for different amount of inputs:

\
#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  table.header("", "algorithm A", "algorithm B", "algorithm C"),
  "n = 1", "1", "1", "3",
  "n = 10", "10", "55", "3",
  "n = 100", "100", "5050", "3",
  "n = 1000", "1000", "500500", "3",
)

\
we can clearly see that algorithm C performs the least amount of operations as
our input grows. algorithm A and B both grows, however, at different rate. when we analyze an algorithm, we wocus on the trends as the problem instances grow in size.


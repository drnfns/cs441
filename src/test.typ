#import "conf.typ": conf
#import "@preview/catppuccin:1.0.1": flavors
#show: conf.with(date: datetime(year: 2025, month: 9, day: 17))
#set page(flipped: true)

#grid(
  columns: (1fr, 1fr),
  [
    *typst*:

    \
    ```typst
    $
      &not (p and (q or r)) \
      &= not p or (not q and not r) & "(demorgan twice)" \
      &= (not p or not q) and (not p or not r) wide & "(distributive)" \
      &= not (p and q) and not(p and r) & "(demorgan)"
    $
    ```],
  [
    *latex*:

    \
    ```latex
    \begin{aligned}
      & \neg (p \land (q \lor r)) \\
      &= \neg p \lor (\neg q \land \neg r) & \text{(demorgan twice)} \\
      &= (\neg p \lor \neg q) \land (\neg p \lor \neg r) \qquad & \text{(distributive)} \\
      &= \neg (p \land q) \land \neg(p \land r) & \text{(demorgan)}
    \end{aligned}
    ```],
)

\
#line(length: 100%, stroke: (paint: flavors.latte.colors.overlay1.rgb))

\
#align(center)[
  $
    & not (p and (q or r)) \
    & = not p or (not q and not r)                 & "(demorgan twice)" \
    & = (not p or not q) and (not p or not r) wide &   "(distributive)" \
    & = not (p and q) and not(p and r)             &       "(demorgan)"
  $
]

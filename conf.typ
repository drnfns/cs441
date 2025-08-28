#let conf(doc) = {
  set page(paper: "us-letter")
  set page(margin: 1.75in)
  set par(leading: .55em, spacing: .55em, first-line-indent: 1.8em, justify: true)
  set text(font: "New Computer Modern")
  show raw: set text(font: "Monofoki")
  show heading: set block(above: 1.4em, below: 1em)

  doc
}

#let bi(content) = {
  set text(fill: gradient.linear(
    rgb(214, 2, 112),
    rgb(155, 79, 150),
    rgb(0, 56, 168)
  ))
  box(content)
}
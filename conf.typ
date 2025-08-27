#let conf(doc) = {
  set page(paper: "us-letter")
  set page(margin: 1.75in)
  set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
  set text(font: "Domine")
  show raw: set text(font: "Monofoki")
  show heading: set block(above: 1.4em, below: 1em)

  doc
}
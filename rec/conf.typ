#import "@preview/hand-in:1.0.0": assignment

#let conf(doc, title: "recitation", name: "name", id: "id") = {
  show: assignment.with(
    title: title,
    student: (
      name: name,
      id: id,
    ),
    subject: (
      name: "Discrete Structures for CS",
      code: "CS441",
    ),
  )

  set page(paper: "us-letter")
  set text(font: "New Computer Modern")
  show math.equation: set text(font: "New Computer Modern Math")
  set enum(indent: 1em, numbering: "a)")

  doc
}


#let conf(title, author, email, type, abstract, reviewer, doc) = {
  
  set page(
    paper: "a4",
    margin: (x: 4.2cm, y: 5.25cm),
  )
  
  set text(
    font: "Times New Roman",
    size: 10pt,
  )
  
  set par(
    justify: true,
  )
  
  // Bibliography in APA Style
  set bibliography(style: "apa", title: "References")
  
  // Title
  align(center, text(14pt)[
    * #title *
  ])
  
  // Author
  align(center, text(10pt)[
    #v(12pt,weak: false)
    #author
    #v(3pt,weak: false)
  ])
  
  // Type of paper
  align(center, text(10pt)[
    _ #type _ 
    #v(3pt,weak: false)
  ])

// University
align(center, text(10pt)[
  Hasso Plattner Institute\
  Chair for Design Thinking and Innovation Research\
  August-Bebel-Strasse 88, 14482 Potsdam, Germany\
  #email
  \
  ])

// Heading 1 
show heading.where(level: 1): it => [
  #v(24pt,weak: true)
  #set text(12pt, weight: "bold")
  #block(it.body)
  #v(12pt,weak: true)
]

// Move captions of Figures
show figure: it => align(center)[
  #set text(
    size: 8pt
  )
  #if it.kind == table [
    #it.caption
    #v(10pt, weak: true)
    #it.body
  ] else [
    #it.body
    #it.caption
  ]
]

// Heading 2
show heading.where(
  level: 2
): it => [
  #v(24pt,weak: true)
  #set text(10pt, weight: "bold")
  #block(it.body)
  #v(12pt,weak: true)
]

// Abstract
par(justify: true)[
    #v(10pt)
    _Abstract:_ #abstract\
    \
    #v(10pt)
    Reviewer: #reviewer
  ]

// Rest of the document
doc

}

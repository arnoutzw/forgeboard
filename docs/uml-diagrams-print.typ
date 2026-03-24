#set document(title: "ForgeBoard — UML Diagrams")

// Title page
#page(paper: "a4", margin: 1cm)[
  #align(center + horizon)[
    #text(size: 28pt, weight: "bold")[ForgeBoard]
    #v(0.5cm)
    #text(size: 16pt, fill: rgb("#666"))[UML Diagrams]
    #v(0.3cm)
    #text(size: 11pt, fill: rgb("#999"))[Black Sphere Industries — March 2026]
  ]
]

// uml-architecture.svg: 7003x1393 -> landscape
#page(paper: "a4", flipped: true, margin: 1cm)[
  #text(size: 10pt, fill: rgb("#666"))[Architecture Diagram]
  #v(0.3cm)
  #image("uml-architecture.svg", width: 100%, height: 100%, fit: "contain")
]

// uml-seq-main.svg: 1574x3826 -> portrait
#page(paper: "a4", margin: 1cm)[
  #text(size: 10pt, fill: rgb("#666"))[Sequence — Main]
  #v(0.3cm)
  #image("uml-seq-main.svg", width: 100%, height: 100%, fit: "contain")
]

// uml-seq-secondary.svg: 1449x4026 -> portrait
#page(paper: "a4", margin: 1cm)[
  #text(size: 10pt, fill: rgb("#666"))[Sequence — Secondary]
  #v(0.3cm)
  #image("uml-seq-secondary.svg", width: 100%, height: 100%, fit: "contain")
]

// uml-states.svg: 1676x1427 -> landscape
#page(paper: "a4", flipped: true, margin: 1cm)[
  #text(size: 10pt, fill: rgb("#666"))[State Diagram]
  #v(0.3cm)
  #image("uml-states.svg", width: 100%, height: 100%, fit: "contain")
]

/*
This copy of the resume formatting template is provided in the template download in case
you'd like to make your preferred edits to the template directly.

If you'd like to use this copy instead of the package, you'll need to update the #import
statement in your resume.typ file to reference this file directly.

Have you made edits or bug fixes to this template that you feel would help out others?
It would be fantastic if you submitted a pull request to the template repository at
https://github.com/chaoticgoodcomputing/typst-resume-starter !
*/

/*
Core formatting for the template document type. Establishes general document-wide formatting,
and creates the header and footer for the resume.
*/
#let resume(
  author: "",
  position: "",
  location: "",
  contacts: (),
  body
) = {

  // Sets document metadata
  set document(author: author, title: author)

  // Document-wide formatting, including font and margins
  set text(
    font: "New Computer Modern",
    size: 11pt,
    lang: "en"
  )

  set page(
    margin: (
      top: 1.25cm,
      bottom: 1.25cm,
      left: 1.5cm,
      right: 1.5cm
    ),
  )

  show link: set text(
    fill: rgb("#0645AD")
  )
  
  // Header parameters, including author and contact information.
  show heading: it => [
    #pad(top: 0pt, bottom: -15pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  // Author
  align(center)[
    #block(text(weight: 600, 2em, [#smallcaps(author)]))
  ]

  align(center)[
    #block(text(weight: 600, 1.5em, [#smallcaps(position)]))
  ]

  // Contact
  pad(
    top: 0.25em,
    align(center)[
      #smallcaps[#contacts.join("  |  ")]
    ],
  )

  // Location
  if location != "" {
    align(center)[
      #smallcaps[#location]
    ]
  }

  // Main body.
  set par(justify: true)

  body
}

/*
Allows hiding or showing full resume dynamically using global variable. This can
be helpful for creating a single document that can be rendered differently depending on
the desired output, for cases where you'd like to simultaneously render both a full copy
and a single-page instance of only the most important or vital information.
*/
#let hide(should-hide, content) = {
  if not should-hide {
    content
  }
}

/*
Experience section formatting logic.
*/
#let edu(
  institution: "",
  departement: "",
  date: "",
  degree: "",
  location: "",
  details: []
) = {
  grid(
    columns: (auto, 1fr),
    align(left)[
      #strong[#institution]
      #if departement != "" [ | #emph[#departement]]
      #{
        if degree != "" [
          \ #emph[#degree]
        ]
      }
    ],
    align(right)[
      #emph[#date]
      #{
        if location != "" [
          \ #emph[#location]
        ]
      }
    ]
  )
  details
  v(0.2em)
}

/*
Skills section formatting, responsible for collapsing individual entries into a single list.
*/
#let skills(areas) = {
  for area in areas {
    strong[#area.at(0): ]
    area.at(1).join(" | ")
    linebreak()
  }
}

/*
Experience section formatting logic.
*/
#let exp(
  role: "",
  project: "",
  date: "",
  location: "",
  summary: "",
  details: []
) = {
  grid(
    columns: (auto, 1fr),
    align(left)[
      #strong[#role]
      #if project != "" [ | #emph[#project]]
      #{
        if summary != "" [
          \ #emph[#summary]
        ]
      }
    ],
    align(right)[
      #emph[#date]
      #{
        if location != "" [
          \ #emph[#location]
        ]
      }
    ]
  )
  details
  v(0.2em)
}

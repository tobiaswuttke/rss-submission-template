#import "rss-template.typ": conf

// Preamble
#let title = [Your Title]
#let author = [Your name]
#let type = [Thesis Proposal]
#let email = [your.email\@hpi.de]
#let reviewer = [Reviewer's name]
#let abstract = [#lorem(80)]

#show: doc => conf(
  [#title], 
  [#author], 
  [#email],
  [#type], 
  [#abstract], 
  [#reviewer], 
  doc
)

// Start of document:
= First Heading
#lorem(100)

== Second Heading (Please avoid third heading)
#lorem(100)
This is an example cite: @baiyereDigitalTransformationNew2020
See @roadmap for more details.


#figure(
 table(
    columns: 4,
    [*Working title*], [*Study Description*], [*Status*], [*Comment*],
    [y], [0.3s], [0.4s], [0.8s],
    [],[],[],[]
  ),
  caption: [
    The roadmap.
  ],
)<roadmap>

#bibliography("lit.bib")

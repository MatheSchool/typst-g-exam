///  Show a clarification.
///    - size: Size of clarification.
///    - body: Body of clarification.
#let g-clarification(size:8pt, body) = { 
  text(size:size)[$(*)$ #body] 
}
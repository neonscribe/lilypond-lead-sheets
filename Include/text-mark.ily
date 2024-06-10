xTextMark =
  #(define-scheme-function (mark)
  (scheme?)
  "Our textMark with tag"
  #{
    \tag LLS \textMark #mark
  #} )

xTextEndMark =
  #(define-scheme-function (mark)
  (scheme?)
  "Our textEndMark with tag"
  #{
    \tag LLS \textEndMark #mark
  #} )

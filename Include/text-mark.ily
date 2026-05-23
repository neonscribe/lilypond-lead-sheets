xTextMark =
  #(define-scheme-function (mark)
  (scheme?)
  "Our textMark with tag"
  #{
    \tag LLS \textMark #mark
  #} )

xTextMarkDown =
  #(define-scheme-function (mark)
  (scheme?)
  "Our textMark with tag"
  #{
    \tweak direction #DOWN \tag LLS \textMark #mark
  #} )

xTextEndMark =
  #(define-scheme-function (mark)
  (scheme?)
  "Our textEndMark with tag"
  #{
    \tag LLS \textEndMark #mark
  #} )

xTextEndMarkDown =
  #(define-scheme-function (mark)
  (scheme?)
  "Our textEndMark with tag"
  #{
    \tweak direction #DOWN \tag LLS \textEndMark #mark
  #} )

xVoiceTwoSmall =
#(define-music-function (m)
   (ly:music?)
  #{
  \tag LLS {
    \new Voice
  { \voiceTwo
      \magnifyMusic 0.63 { #m }
    } }
  #} )

xVoiceTwo =
#(define-music-function (m)
   (ly:music?)
  #{
  \tag LLS {
    \new Voice
  { \voiceTwo
      { #m }
    } }
  #} )

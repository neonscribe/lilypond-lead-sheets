%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Maiden Voyage"
  subtitle = \instrument
  poet = ""
  composer = "Herbie Hancock"
  copyright = "© 1965 Hancock Music Inc."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s4

  d1:sus7 d1:sus7 d1:sus7 d1:sus7
  f1:sus7 f1:sus7 f1:sus7
  
  f1:sus7 

  f1:sus7 

  ef1:sus7 ef1:sus7 ef1:sus7 ef1:sus7
  df1:sus7 df1:sus7 df1:sus7 df1:sus7 
  d1:sus7 d1:sus7 d1:sus7 d1:sus7
  f1:sus7 f1:sus7 f1:sus7 f1:sus7 
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 125

  \partial 4 a8 d8 |

  \xTextMark \markup{ \bold \box "A1, A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  d1~ | d1~ | d1 | r2 r4 c8 d8 |
  \break
  ef8 f8 c2.~ | c1~ | c1 |
  \alternative {
    \volta 1 {
  r2 r4 a8 d8 |
  } \volta 2 {
  r2 r4 c8 f8 |
  } } }
  \bar "$"
  \break
  \xTextMark \markup{ \bold \box "B" }

  f1~ | f1~ | f1 | r2 r4 ef8 ff8 |
  \break
  ff8 gf8 df2.~ | df1~ | df1 | r2 r4 a8 d8 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  d1~ | d1~ | d1 | r2 r4 c8 d8 |
  \break
  ef8 f8 c2.~ | c1~ | c1 | r1 |

  \bar "|."
}

refrainBass = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef bass

  \partial 4 s4 |
  \repeat volta 2 {
  \improvisationOn
  d,4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  a8 d8 a8 |
  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  a8 d8 a8 |
  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  c8 f8 c8 |
  \improvisationOn
  d4 d4~ d8 d4.~ |
  \alternative {
    \volta 1 {
  d4. d8~ d8
  \improvisationOff
  c8 f8 c8 |
  } 
    \volta 2 {
  \improvisationOn
  d4. d8~ d8
  \improvisationOff
  bf8 ef8 bf8 |
  } } }

  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  bf8 d!8 bf8 |
  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  af8 df8 af8 |
  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  af8 df8 af8 |
  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  a!8 d8 a8 |

  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  a8 d8 a8 |
  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  c8 f8 c8 |
  \improvisationOn
  d4 d4~ d8 d4.~ | d4. d8~ d8
  \improvisationOff
  c8 f8 c8 |
  \improvisationOn
  d4 d4~ d8 d4.~ |
  d4. d8~ d8
  \improvisationOff
  a8 d8 a8 |

  \bar "|."
}


\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-with-bass.ily"

\markup { "Use chords and bass of " \bold \box "A" " for intro and outro." }
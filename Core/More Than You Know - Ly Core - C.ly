%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
   (set-global-staff-size 18))

\header {
  title = "More Than You Know"
  subtitle = \instrument
  poet = "William Rose & Edward Eliscu"
  composer = "Vincent Youmans"
  copyright = "© 1929 Chappell & Co."
}

refrainLyrics = \lyricmode {
More than you know, more than you know,
man of my heart I love you so;
Late -- ly I find you're on my mind, more than you know.
Wheth -- er you're right, wheth -- er you're wrong,
man of my heart I'll string a -- long; You need me so,
more than you'll ev -- er know.
Lov -- ing you the way that I do,
there's no -- thing I can do a -- bout it;
Lov -- ing may be all you can give, but hon -- ey I can't live with -- out it.
Oh, how I'd cry, oh, how I'd cry if you got tired and said good -- bye,
More than I'd show, more than you'd ev -- er know.
}

refrainChords = \chordmode {
  s2
  
  c2:6 g2:7.5+ g2:m7 c2:7 f2:maj7 e4:m7 a4:7 d2:m7 f2:m6
  g2:7 af2:7.5- g2:7 g2:7/f e2:m7 a2:7 d2:m7 g2:7

  c2:6 g2:7.5+ g2:m7 c2:7 f2:maj7 e4:m7 a4:7 d2:m7 bf2:7
  c2:maj7 a2:7 d2:m7 g2:7 c1:6 fs2:m7.5- b2:7
  
  e1:m7 fs2:dim7 b2:7.9+ e1:m7 a2:m7 d2:7
  g2:maj7 e2:m7 a2:m7 d2:7 g2:7 af2:7 g2:7 g2:7.5+

  c2:6 g2:7.5+ g2:m7 c2:7 f2:maj7 e4:m7 a4:7 d2/fs f2:m6
  e2:m7 a2:7 d2:m7 g2:7 c2:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 100

  \partial 2 \tuplet 3/2 { g4 gs4 a4 } |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  a2 \tuplet 3/2 { g4 gs4 a4 } | a2 \tuplet 3/2 { g4 gs4 a4 } |
  c4 a4 g4 e4 | d2 \tuplet 3/2 { d4 ds4 e4 } |
  \break
  e2 \tuplet 3/2 { d4 ds4 e4 } | e2 \tuplet 3/2 { d4 ds4 e4 } |
  g1 | r2 \tuplet 3/2 { g4 gs4 a4 } |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  a2 \tuplet 3/2 { g4 gs4 a4 } | a2 \tuplet 3/2 { g4 gs4 a4 } |
  c4 a4 g4 e4 | d2 \tuplet 3/2 { d4 ds4 e4 } |
  \break
  g2 \tuplet 3/2 { g4 gs4 a4 } |  c2 d2 | c1 | r2 b8 a8 g8 fs8 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  a4 g8 fs8 e4 g4 | fs8 e8 d8 c8 e4 d4 | c4 b2. | r2 d'8 c8 b8 a8 |
  c4 b8 a8 g4 b4 | a8 g8 fs8 e8 g4 fs4 | e4 d2. | r2 \tuplet 3/2 { g4 gs4 a4 } |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  a2 \tuplet 3/2 { g4 gs4 a4 } | a2 \tuplet 3/2 { g4 gs4 a4 } |
  c4 a4 g4 e4 | d2 \tuplet 3/2 { d4 ds4 e4 } |
  \break
  g2 \tuplet 3/2 { g4 gs4 a4 } |  c2 d2 | c1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

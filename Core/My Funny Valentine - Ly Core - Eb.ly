%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "My Funny Valentine"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = "© 1937 Chappell & Co."
}

refrainLyrics = \lyricmode {
My fun -- ny Val -- en -- tine,
Sweet com -- ic Val -- en -- tine,
You make me smile with my heart. __
Your looks are laugh -- a -- ble,
Un -- pho -- to -- graph -- a -- ble,
Yet you're my fav -- 'rite work of art. __
Is your fig-- ure less than Greek?
Is your mouth a lit -- tle weak?
When you o -- pen it to speak,
Are you smart?
But don't change a hair for me,
Not if you care for me.
Stay, lit -- tle Val -- en -- tine, stay. __
Each day is Val -- en -- tine's day.
}

refrainChords = \chordmode {
  c1:m c1:m7+ c1:m7 c1:m6
  af1:maj7 f1:m7 d1:m7.5- g1:7.9-

  c1:m c1:m7+ c1:m7 c1:m6
  af1:maj7 f1:m7 f1:m7.5- bf1:7.9-
  
  ef2:maj7 f2:m7 g2:m7 f2:m7 ef2:maj7 f2:m7 g2:m7 f2:m7
  ef2:maj7 g2:7 c2:m bf4:m7 a4:7 af1:maj7 d2:m7.5- g2:7.9-

  c1:m c1:m7+ c1:m7 c1:m6
  af1:maj7 d2:m7.5- g2:7.9- c1:m bf2:m7 a2:7.11+
  
  af1:maj7 f2:m7 bf2:7.9- ef1:6

  \chordOpenParen{ d2:m7.5- }
  \chordCloseParen{ g2:7.9- }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad"

  \mark \markup{ \box "A1" }
  
  c2 d4 ef4 | d4. ef8 d2 | c2 d4 ef4 | d4. ef8 d2 |
  \break
  c2 d4 ef4 | bf'2 af4 g4 | f1~ | f1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  ef2 f4 g4 | f4. g8 f2 | ef2 f4 g4 | f4. g8 f2 |
  \break
  ef2 f4 g4 | d'4. c8 bf4. a8 | af1~ | af2 g4 f4 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  bf4. ef,8 ef4 d4 | ef2 f4 d4 | c'4. ef,8 ef4 d4 | ef2 ef4 d4 |
  \break
  d'4. ef,8 ef4 d4 | ef2 f4 g4 | c1~ | c2 d,2 |

  \bar "||"
  \break

  \mark \markup{ \box "A3" }
  
  c2 d4 ef4 | d4. ef8 d2 | ef2 f4 g4 | f4. g8 f2 |
  \break
  c'2 d4 ef4 | d4. ef8 d2 | ef1~ | ef1 |
  \break
  ef,2 f4 g4 | f4. g8 f2 | ef1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

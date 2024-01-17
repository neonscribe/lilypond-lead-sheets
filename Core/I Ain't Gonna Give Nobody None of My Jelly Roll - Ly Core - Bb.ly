%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\include "../Include/lead-sheets.ily"

\header {
  title = "I Ain't Gonna Give Nobody None of My Jelly Roll"
  subtitle = \instrument
  poet = ""
  composer = "Spencer Williams and Clarence Williams"
  copyright = "© 1919 Shapiro, Bernstein & Co. Inc."
}

refrainLyrics = \lyricmode {
  I ain't gon -- na give no -- bod -- y none o' my jel -- ly roll. __
  I would_n't give you a_piece of cake, not to save your soul. __
  My mama told me to -- day __ just be_fore she went a_way __ \skip 1 \skip 1
  If I was a good lit -- tle girl, She'd put my hair in curls!
  There ain't no use for you to keep on hang -- in' 'round. __
  I know_you want_it, but I got -- ta turn you down.
  My jel -- ly roll is sweet __ \skip 1
  and the taste can't be beat. __
  I know you want it, but you can't have it. I ain't gon -- na give you none. __
}

refrainChords = \chordmode {
  s4

  bf1 bf1 c1:7 c1:7
  f1:7 f1:7 bf1 bf1
  g1:7 g1:7 c1:7 c1:7
  c1:7 c1:7 f1:7 f1:7
  
  bf1 bf1 c1:7 c1:7
  f1:7 f1:7 d1:7 d1:7
  ef1 e1:dim7 bf1/f g1:7
  ef2 e2:dim7 bf2/f g2:7 c2:7 f2:7 bf1
  
  bf2 g2:7 c2:7 f2:7 bf1
}

refrainKey = bf

bandBreak =
#(define-music-function (expr) (ly:music?)
  "mark a break in the music where the band drops out"
  #{ \ottava #1
     \set Staff.ottavation = #"break"
     \transpose c c' { \relative f' { #expr } }
     \ottava #0 #})

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Fast Swing" 4 = 180

  \partial 4 f4 |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  f4 g8 g8 a4 g4 | a8 g4 a8~ a8 fs8 g4 | bf8 g4 g8~ g2~ | g2. g4 |
  \break
  a4 bf4 c8 bf4. | a8 bf4 c8~ c4 cs4 | d8 bf4 bf8~ bf2~ | bf2. g4 |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  af4 g4 fs8 g4 d'8~ | d2. r4 | d4 c4 b8 c4 g8~ | g2. c4 |
  \break
  d8 d8 d4 d4. c8 | d8 d8 d4 d2 | r4 \bandBreak{ a4 c4 a4 | g8 a4 g8~ g4 }
  \relative f' {
  gs4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  f8 g4. a4 g4 | a8 g4 a8~ a4 g4 | bf8 g4 g8~ g2~ | g2. gs4 |
  \break
  a4 bf4 c4 bf4 | a8 bf4 c8~ c4 cs4 | d1~ | d2. bf4 |

  \bar "||"
  \break

  \mark \markup{ \box "C" }
  
  c8 g4 g8~ g4 g4 | g2. g4 | bf8 f4 f8 f4 fs4 | g2. bf4 |
  \break
  c4 bf4 cs4 bf4 | cs8 d4 a8 bf4 a8 bf8 | c4 d8 d8 c4 a4 | bf2. r4 |

  \bar "|."
  \break

  \mark \markup{ "Tag" }
  
  bf8 a8 af4 g2 | d'8 cs8 d4 f8 d4. | bf2. r4 |

  \bar "|."
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

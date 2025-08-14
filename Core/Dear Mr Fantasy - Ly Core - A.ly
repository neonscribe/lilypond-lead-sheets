%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Dear Mr. Fantasy"
  subtitle = \instrument
  poet = ""
  composer = "Steve Winwood, Chris Wood and Jim Capaldi"
  copyright = \markup \small "© 1968 F.S. Music, Ltd. and Island Music Ltd."
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _
Dear Mis -- ter Fan -- ta -- sy, play us a tune, __
some -- thing to make us all hap -- py.
_ _ _ _ _ _
Do an -- y -- thing, take us out of this gloom. __
Sing a song, __ play gui -- tar, __ make it snap -- py. __
You are the one who can make us all laugh, __
but do -- ing that, you break out in tears.
_ _ _ _ _ _
Please don't be sad, if it was a straight mind you had, __
we would -- n't have known you all these years. __

Ooh, __ ah. Ooh, __ ah. Ooh, __ ah. Ohh, __ ah, ah.

Dear Mis -- ter Fan -- ta -- sy, play us a tune, __
some -- thing to make us all hap -- py.
_ _ _ _ _ _
Do an -- y -- thing, take us out of this gloom. __
Sing a song, __ play gui -- tar, __ make it snap -- py. __
}

refrainChords = \chordmode {
  a1 g1 d1 a2 r2
  
  a1 g1 d1 a1
  a1 g1 d1 a1
  a1 g1 d1 a1
  a1 g1 d1 a1
  
  fs1:m a1 fs1:m a1 fs1:m a1 fs1:m g1 e1:7
  
  a1 g1 d1 a1
  a1 g1 d1 a1

  a1 g1 d1 a1

  a1 g1 d1 a1
}

refrainKey = a

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Psychedelic Rock [Traffic 1967]" 4 = 167

  \xTextMark \markup{ \bold \box "Intro" }
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq e,16 fs16 a16 c16~ c16 a16 c8 |

  \bar "||-||"
  \break

  \xTextMark \markup{  \musicglyph #"scripts.segno" \bold \box "Verse 1" }

  g''8 g8 g8 a8~ a8 g8 e4 | d8 cs8 d8 e8~( e16 d16 cs8) r4 |
  \break
  cs8 d4 cs16 d16~ d8 cs16 d16~ d8 e8~ |
  e8 e8~( e16 d16 cs8) e,,16 fs16 a16 c16~ c16 a16 c8 |
  \break
  g''8 g8 g8 a8~ a8 e8~ e16 e8. |
  d8 cs16 d16~ d8 e8~( e16 d16 cs8) d8 cs16 d16~ |
  \break
  d4 d8 cs16 d16~ d4 cs16 d8 e16~ | e8 e8~( e16 d16 cs8) r2 |

  \sect "Verse 2"
  
  g'8 g8 g8 a8~ a8 e8~ e16 e8. | d8 cs16 d16~ d8 e8~( e16 d16 cs8) r8 cs8 |
  \break
  c16 d8 d16~ d4 d8 cs8 d8 cs8 | e8.( d16 cs4) e,,16 fs16 a16 c16~ c16 a16 c8 |
  \break
  g''8 g8 g8 a8~ a8 e16 d16~ d16 d8 c16 | d8 d8 c8 e16( d16~ d16 c16 a8) r8 a8 |
  \break
  c16 d8. d8. d16~ d8 c8 e8 e8 | d16( cs16 a4.) r2 \textToCoda |
  
  \xPageBreak

  \sect "Bridge"
  
  fs'2.( cs4) | <a' \tweak font-size #-2 cs \tweak font-size #-2 e,>2. r4 |
  fs2.( cs4) | <a' \tweak font-size #-2 cs \tweak font-size #-2 e,>2. r4 |
  \break
  fs2.( cs4) | <a' \tweak font-size #-2 cs \tweak font-size #-2 e,>2. r4 |
  fs1 | <g \tweak font-size #-2 b \tweak font-size #-2 d,>1 |
  <gs \tweak font-size #-2 b \tweak font-size #-2 e,>1 |

  \sect "Verse 3"
  
  g8 g8 g8 a8~ a8 g8 e4 | d8 cs8 d8 e8~( e16 d16 cs8) r4 |
  \break
  cs8 d4 cs16 d16~ d8 cs16 d16~ d8 e8~ |
  e8 e8~( e16 d16 cs8) e,,16 fs16 a16 c16~ c16 a16 c8 |
  \break
  g''8 g8 g8 a8~ a8 e8~ e16 e8. |
  d8 cs16 d16~ d8 e8~( e16 d16 cs8) d8 cs16 d16~ |
  \break
  d4 d8 cs16 d16~ d4 cs16 d8 e16~ | e8 e8~( e16 d16 cs8) r2 |

  \sect "Solos"
  
  \bar ".|:-||"
  \repeat volta 2 {
  \rsq \rsq \rsq \xTextMark \markup{ \italic "Repeat as desired" } \rsq  |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq \dalSegno |
  }

  \textCodaBreak
  
  \bar ":|.|:"
  \repeat volta 2 {
  \rsq \rsq \rsq \xTextMark \markup{ \italic "Repeat until cue" } \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }
  \break
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

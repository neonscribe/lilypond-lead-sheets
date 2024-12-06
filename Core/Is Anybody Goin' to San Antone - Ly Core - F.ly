%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Is Anybody Goin' to San Antone"
  subtitle = \instrument
  poet = ""
  composer = "Dave Kirby and Glenn Martin"
  copyright = "© 1969 Pamper Music Inc."
}

straightEighths = ##t

refrainLyrics = \lyricmode {
  Rain drip -- pin' off the brim of my hat,
  it sure looks cold to -- day.
  Here I am a- -- walk -- in' down Six -- ty Six,
  wish she had -- n't done me this way.

  Sleep -- in' un -- der a ta -- ble in a road -- side park,
  a man could wake up dead.
  But it sure seem a -- warm -- er than it did
  sleep -- in' in our king -- sized bed.

  Is an -- y -- bod -- y go -- in' to San An -- tone
  or Phoe -- nix, Ar -- i -- zo -- na?
  An -- y place is all right as long as I
  for -- get I've ev -- er known her.
}

refrainChords = \chordmode {
  f1 bf1 c1:7 f1
  f1 bf1 c1:7 f1

  f1 bf1 c1:7 f1
  f1 bf1 c1:7 f1

  f1 bf1 c1:7 f1
  f1 bf1 c1:7 f1
}

refrainKey = f

refrainMelody = \relative f'' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Tex-Mex Country Rock" 4 = 136

  \xTextMark \markup{ \bold \box "Verse 1" }
  
  c2 c8 bf8 a8 a8 | bf8 bf8 a4 g4. g8 | c,4 e4 g4. c8 | a1 |
  \break
  c8 c8 c8 c8 c8 bf8 a4~ | a8 bf4 a8 f2 | c8 c8 e8 g8 bf8 a8 g4 | f2. a8 bf8 |

  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "Verse 2" }
  
  c8 c8 c8 c8~ c8 bf8 a8 a8 | bf4 a4 g4. g8 | c,4. e8 g8 c4 a8~ | a2. a8 bf8 |
  \break
  c4 c8 c8 c8( bf8) a4~ | a8 bf8 a8 g8~ g2  | c,8 c8 e8 g8 bf4 a4 | f2. r8 c8 |

  \xTextMark \markup{ \bold \box "Chorus" }
  
  a'8 g8 a8 g8 a8 g4 f8 | g4 bf8 d,8~ d4. d8 | c4 e4 g4. c8 | d4 c2. |
  \break
  a8 g8 a8 g8 a4 g8 f8 | g4 bf8 d,8~ d4. d8 | c4 e4 a4. g8 | g4 f2. |

  \bar "|."
}
  
\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \vspace #2


  \column {
    \line { \large { Wind whippin' down the neck of my shirt } }
    \line { \large { like I ain't got nothin' on. } }
    \line { \large { But I'd rather fight the wind and rain, } }
    \line { \large { than what I was fightin' at home } }
    \vspace #2
    \line { \large { Is anybody goin' to San Antone } }
    \line { \large { or Phoenix, Arizona? } }
    \line { \large { Any place is alright as long as I } }
    \line { \large { can forget I've ever known her. } }
  }
  \column {
    \hspace #10
  }
  \column {
    \line { \large { Yonder goes a truck with the U.S. Mail, } }
    \line { \large { People writin' letters back home. } }
    \line { \large { Tomorrow, she'll want me back again } }
    \line { \large { but I'll be just as gone. } }
  \vspace #2
    \line { \large { Is anybody goin' to San Antone } }
    \line { \large { or Phoenix, Arizona? } }
    \line { \large { Any place is alright as long as I } }
    \line { \large { can forget I've ever known her. } }
  }
}

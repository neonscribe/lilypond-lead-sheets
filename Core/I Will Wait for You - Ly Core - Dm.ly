%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
  title = "I Will Wait for You"
  subtitle = \instrument
  poet = "Jacques Demy/Norman Gimbel"
  composer = "Michel Legrand"
  copyright = "© 1964 Productions Michel Legrand and Productions Francis Lemarque"
}

refrainLyricsOne = \lyricmode {
If it takes for -- ev -- er I will wait for you,
for a thou -- sand sum -- mers I will wait for you,
'til you're back be -- side me, 'til I'm hold -- ing you,
'til I hear you sigh here in my arms.

An -- y

_

clock will tick a -- way the hours one by one, __
and then the time will come when all the wait -- ing's done. __
The time when you re -- turn and find me here and run, __
straight to my wait -- ing arms. __

If it takes for -- ev -- er I will wait for you,
for a thou -- sand sum -- mers I will wait for you,
'til you're here be -- side me, 'til I'm touch -- ing you
and for -- ev -- er more shar -- ing your love.
}

refrainLyricsTwo = \lyricmode {
_ _ where you wan -- der, an -- y where you go,
ev -- 'ry day re -- mem -- ber how I love you so.
In your heart be -- lieve what in my heart I know,
that for ev -- er more I'll wait for you.

_ _

The
}

refrainChords = \chordmode {
  s2

  d1:m7 d1:m7 g1:m7 g1:m7
  c1:7 c1:7 f1:maj7 e2:m7.5- a2:7.9-

  d1:m7 d1:m7 g1:m7 g1:m7
  d1:m7 e2:m7.5- a2:7.9- d1:m7

  e2:m7.5- a2:7.9-

  d1:m7

  g1:m7 g1:m7 d1:m7 d1:m7
  e1:m7.5- a1:7.9- b1:m7.5- e1:7.9-
  a1:7.9- a1:7.9-
  
  d1:m7 d1:m7 g1:m7 g1:m7
  c1:7 c1:7 f1:maj7 e2:m7.5- a2:7.9-

  d1:m7 d1:m7 g1:m7 g1:m7
  d1:m7 e2:m7.5- a2:7.9- d1:m7

  \chordOpenParen{ e2:m7.5- }
  \chordCloseParen{ a2:7.9- }
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \partial 2 gs4 a4 |

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  g2 f2 | e4 d4 cs'4 d4 | c2 d2 | bf2 fs4 g4 |
  \break
  f2 e2 | d4 c4 b'4 c4 | bf2 a2 | a2 gs4 a4 |

  \bar "||"
  \break

  g2 f2 | e4 d4 cs'4 d4 | c2 bf2 | bf2 a4 g4 |
  \break
  a4 d4 d,2 | e4 a4 a,2 | d1 |
  \alternative { \volta 1 {
  r2 fs4 a4 |
  } \volta 2 {
  r2 r4 r8 b8 |
  } } }

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  c8 c8 bf8 bf8 c8 c8 bf4 | d4 c8 bf8~ bf4. a8 | 
  bf8 bf8 a8 a8 bf8 bf8 a8 a8 | c4 bf8 a8~ a4. g8 |
  \break
  a8 a8 g8 g8 a8 a8 g8 g8 | bf4 a8 g8~ g2 |
  \break
  f1 | r4 e8 f8 g4 d4 | e1~ | e2 gs4 a4 |
  
  \bar "||"
  \pageBreak

  \xTextMark \markup{ \bold \box "A3" }
  
  g2 f2 | e4 d4 cs'4 d4 | c2 d2 | bf2 fs4 g4 |
  \break
  f2 e2 | d4 c4 b'4 c4 | bf2 a2 | a2 gs4 a4 |
  \break
  g2 f2 | e4 d4 cs'4 d4 | c2 bf2 | bf2 a4 g4 |
  \break
  a4 d4 d,2 | e4 a4 a,2 | d1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"

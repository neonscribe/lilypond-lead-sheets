%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "They Can't Take That Away From Me"
  subtitle = \instrument
  poet = "Ira Gershwin"
  composer = "George Gershwin"
  copyright = "© 1936 Chappell & Co."
}

refrainLyrics = \lyricmode {
The way you wear your hat, __ the way you sip your tea, __
the mem -- 'ry of all that, __ no, no, they can't take that a -- way from me. __
The way your smile just beams, __ the way you sing off key, __
the way you haunt my dreams, __ no, no, they can't take that a -- way from me. __
We may nev -- er, nev -- er meet a -- gain on the bump -- y road to love.
Still I'll al -- ways, al -- ways keep the mem -- 'ry of:
The way you hold your knife, __ the way we danced 'til three, __
the way you've changed my life, __ no, no, they can't take that a -- way from me. __
No, they can't take that a -- way from me. __
}

refrainChords = \chordmode {
  s1
  
  f2:6 f2:maj7 f2/a af2:dim7 g1:m7 bf1/c
  c1:m7 f1:9 bf2:maj7 d2:7 g2:m7 bf2/c

  f2:6 f2:maj7 f2/a af2:dim7 g1:m7 bf1/c
  c1:m7 f1:9 bf2:maj7 d2:7 f1:6

  a2:m7 e2:7 a2:m7 e2:7 a2:m7 fs4:m7.5- b4:7 b2:m7 e2:7
  a2:m7 e2:7 a2:m7 d2:7 g1:7 bf1/c

  f2:6 f2:maj7 f2/a af2:dim7 g1:m7 bf1/c
  c1:m7 f1:9 bf2:maj7 c2:7 f2:6 bf2:m6
  a2:7.5+ d2:7.9+ g2:m7 c2:13 f1:6
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120

  r8 f8 f8 f8 f4 f8 a8~ |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  a1 | r8 f8 f8 f8 f4 f8 c8~ | c1 |
  \break
  r8 f8 f8 f8 f4 f8 c'8~ | c1~ | c8 r8 d4 d4 d4 | f8 d8 c8 bf8 c4 a8 f8~ |
  \break
  f8 f8 f8 f8 f4 f8 a8~ |
  \bar "||"
  \mark \markup{ \box "A2" }

  a1 | r8 f8 f8 f8 f4 f8 c8~ | c1 |
  \break
  r8 f8 f8 f8 f4 f8 c'8~ | c1~ | c8 r8 d4 d4 d4 | f8 d8 c8 bf8 c4 a8 f8~ |
  \break
  f2. a8 b8 |
  \bar "||"
  \mark \markup{ \box "B" }
  
  c4 a4 e'4 d4 | c4 a4 e'4 d8 c8 | a8 a8 a2 g4 |
  \break
  e2. a8 b8 | c4 a4 e'4 d4 | c4 a4 d4 d4 | g,1 |
  \break
  r8 f8 f8 f8 f4 f8 a8~ |
  \bar "||"
  \mark \markup{ \box "A3" }
  a1 | r8 f8 f8 f8 f4 f8 c8~ | c1 |
  \break
  r8 f8 f8 f8 f4 f8 d'8~ | d1~ | d4 f4 f4 f4 | f8 d8 c8 bf8 c4 a8 f8~ |
  \break
  f8 r8 c'2 bf4 | f4 bf4 a4 c4 | g2 a2 | f1~ | f2. r4 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

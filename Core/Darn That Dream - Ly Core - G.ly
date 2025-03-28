%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Darn That Dream"
  subtitle = \instrument
  poet = "Eddie DeLange"
  composer = "Jimmy Van Heusen"
  copyright = \markup \small "© 1939 Lewis Music Publishing Co., Inc."
}

refrainLyrics = \lyricmode {
Darn that dream
I dream each night,
You say you love me and you hold me tight,
But when I a -- wake you're out of sight
Oh, darn that dream.
Darn your lips and darn your eyes,
They lift me high a -- bove the moon -- lit skies,
Then I tum -- ble out of par -- a -- dise,
Oh, darn that dream.
Darn that one track mind of mine,
It can't un -- der -- stand that you don't care.
Just to change the mood I'm in
I'd wel -- come a nice __ old night -- mare.
Darn that dream
And bless it, too,
With -- out that dream I nev -- er would have you,
But it haunts me and it won't come true,
Oh, darn that dream.
}

refrainNewRealChords = \chordmode {
  g2:6/b bf4:m7 ef4:7 a2:m7 b2:7.5- e2:m7 d4:7 c4:m6 b2:m7.5- e2:7
  a2:m7 f2:9 b2:m7 bf2:m7 a2:m7 d2:13 b4:m7 bf4:7 a4:m7 d4:7

  g2:6/b bf4:m7 ef4:7 a2:m7 b2:7.5- e2:m7 d4:7 c4:m6 b2:m7.5- e2:7
  a2:m7 f2:9 b2:m7 bf2:m7 a2:m7 d2:13 g2:6 f4:m7 bf4:7

  ef2:maj7 c2:m7 f2:m7 bf2:7 g2:m7 fs4:m7 b4:7 f2:m7 bf2:7
  ef2:maj7 c2:m7 g1:m a2:m7 d2:7 bf4:m7 ef4:7 a4:m9 d4:13

  g2:6/b bf4:m7 ef4:7 a2:m7 b2:7.5- e2:m7 d4:7 c4:m6 b2:m7.5- e2:7
  a2:m7 f2:9 b2:m7 bf2:m7 a2:m7 d2:13 g2:6
  \chordOpenParen{ a4:m7 }
  \chordCloseParen{ d4:7 }
}

refrainVanillaChords = \chordmode {
  g2 ef2:7 fs2:m7.5- b2:7 e2:m a2:m b2:m7.5- e2:7
  c2 c2:m g2 bf2:dim a2:m7 af2:7 g2 d2:7

  g2 ef2:7 fs2:m7.5- b2:7 e2:m a2:m b2:m7.5- e2:7
  c2 c2:m g2 bf2:dim a2:m7 d2:7 g2 bf2:7

  ef2 c2:m7 f2:m7 bf2:7 ef2 b2:7 bf1:7
  ef2 c2:m7 g4:m d4:7 g2:m a2:m7 d2:7 ef2:7 d2:7

  g2 ef2:7 fs2:m7.5- b2:7 e2:m a2:m b2:m7.5- e2:7
  c2 c2:m g2 bf2:dim a2:m7 d2:7 g2
  \chordOpenParen{ a4:m7 }
  \chordCloseParen{ d4:7 }
}

refrainOriginalChords = \chordmode {
  g2 ef2:7 a2:m7 bf2:7.5- e2:m a2:m d:m6 e2:7
  a2:m7 f2:9 g2:maj7 g2:dim a2:m7 af2:7 g2 a4:m7 d4:7

  g2 ef2:7 a2:m7 bf2:7.5- e2:m a2:m d:m6 e2:7
  a2:m7 f2:9 g2:maj7 g2:dim a2:m7 af2:7 g2 bf2:7

  ef2 c2:m7 f2:m7 bf4:6 bf4:7.5+ ef2 b2:7 f2:m7 bf2:7
  ef2 c2:m7 g2:m g4:m7+ g4:m7 a2:m7 d2:7 ef2:7 d2:7

  g2 ef2:7 a2:m7 bf2:7.5- e2:m a2:m d:m6 e2:7
  a2:m7 f2:9 g2:maj7 g2:dim a2:m7 af2:7 g2
  \chordInsideParens{ d2:7 }
}

refrainRealBookSixthChords = \chordmode {
  g4:maj7 \chordSlash 1 bf4:m7 ef4:7 a2:m7 b2:7 e4:m7 e4:m7/d a4:7/cs c4:m6 b2:m7.5- e2:7
  a2:m7 f2:7 b2:m7 bf2:m7 a2:m7 d2:7 b4:m7 e4:7 a4:m7 d4:7

  g2:maj7 bf4:m7 ef4:7 a2:m7 b2:7 e4:m7 e4:m7/d a4:7/cs c4:m6 b2:m7.5- e2:7
  a2:m7 f2:7 b2:m7 bf2:m7 a2:m7 d2:7 g4:6 \chordSlash 1 f4:m7 bf4:7
  
  ef2:maj7 c2:m7 f2:m7 bf2:7 g2:m7 fs2:m7 f2:m7 bf2:7
  ef2:maj7 c2:m7 a4:m7.5- d4:7 g2:m7 a2:m7 d2:7 ef2:7 d2:7

  g4:maj7 \chordSlash 1 bf4:m7 ef4:7 a2:m7 b2:7 e4:m7 e4:m7/d a4:7/cs c4:m6 b2:m7.5- e2:7
  a2:m7 f2:7 b2:m7 bf2:m7 a2:m7 d2:7 g2:6
  \chordOpenParen{ a4:m7 }
  \chordCloseParen{ d4:7 }
}

refrainGalbraithChords = \chordmode {
  g2:maj7 ef2:7 a2:m7 b2:7.5- e2:m7 d2:9.11+ b2:m7.5- e2:9
  a2:m7 f2:7 b2:m7 bf2:m7 a2:m11 af2:7 b4:m7 bf4:7 ef4:maj7 af4:7

  g2:maj7 ef2:7 a2:m7 b2:7.5- e2:m7 d2:9.11+ b2:m7.5- e2:9
  a2:m7 f2:7 b2:m7 bf2:m7 a2:m11 d2:13 g2/b bf2:13
  
  ef2:maj7 c2:m7 f2:m9 bf2:13 g2:m11 fs4:m9 b4:13 f2:m11 bf2:9
  ef2:maj7 c2:m7 g4:m g4:m9.7+ g4:m7 <c e g d'> a2:m11 d2:9 ef2:9 d2:13

  g2:maj7 ef2:7 a2:m7 b2:7.5- e2:m7 d2:9.11+ b2:m7.5- e2:9
  a2:m7 f2:7 b2:m7 bf2:m7 a2:m11 d2:13.9 g2:maj9
  \chordOpenParen{ a4:m7 }
  \chordCloseParen{ d4:7 }
}

refrainLearnJazzStandardsChords = \chordmode {
  g2:maj7 bf4:m7 ef4:7 a2:m7 b2:7.11+ e2:m7 e4:m7/d c4:m6 b2:m7.5- e2:7.9-
  a2:m7 c4:m7 f4:7 b2:m7 bf2:7.11+ a2:m7 d2:7 b4:m7 e4:7 a4:m7 d4:7

  g2:maj7 bf4:m7 ef4:7 a2:m7 b2:7.11+ e2:m7 e4:m7/d c4:m6 b2:m7.5- e2:7.9-
  a2:m7 c4:m7 f4:7 b2:m7 bf2:7.11+ a2:m7 d2:7 g2:maj7 f4:m7 bf4:7
  
  ef2:maj7 c2:m7 f2:m7 bf2:7 g2:m7 fs2:m7 f2:m7 bf2:7
  ef2:maj7 c2:m7 a4:m7.5- d4:7.9- g2:m7 a1:m7 b4:m7 e4:7 a4:m7 d4:7

  g2:maj7 bf4:m7 ef4:7 a2:m7 b2:7.11+ e2:m7 e4:m7/d c4:m6 b2:m7.5- e2:7.9-
  a2:m7 c4:m7 f4:7 b2:m7 bf2:7.11+ a2:m7 d2:7 g2:maj7
  \chordOpenParen{ a4:m7 }
  \chordCloseParen{ d4:7 }
}

refrainDaveChords = \chordmode {
  g2:maj7 ef2:7 a2:m7 b2:7.11+ e4:m7 e4:m/d a4:7/cs c4:m6 b2:m7.5- e2:7
  a2:m9 f2:9 b2:m7 bf2:m7 a2:m7 d2:7 b4:m7 e4:7 a4:m7 d4:7

  g2:maj7 ef2:7 a2:m7 b2:7.11+ e4:m7 e4:m/d a4:7/cs c4:m6 b2:m7.5- e2:7
  a2:m9 f2:9 b2:m7 bf2:m7 a2:m7 d2:13 g2:6 f4:m7 bf4:7
  
  ef2:maj7 c2:m7 f2:m7 bf2:7 g2:m7 fs2:m7 f2:m7 bf2:7
  ef2:maj7 c2:m7 g2:m g2:m7 a2:m7 d2:7 bf4:m7 ef4:7 a4:m7 d4:7

  g2:maj7 ef2:7 a2:m7 b2:7.11+ e4:m7 e4:m/d a4:7/cs c4:m6 b2:m7.5- e2:7
  a2:m7 f2:7 b2:m7 bf2:m7 a2:m7 d2:7 g2:6
  \chordInsideParens{ d2:7 }
}

%% refrainChords = \refrainOriginalChords
%% refrainChords = \refrainVanillaChords
%% refrainChords = \refrainNewRealChords
%% refrainChords = \refrainGalbraithChords
refrainChords = \refrainRealBookSixthChords
%% refrainChords = \refrainLearnJazzStandardsChords
%% refrainChords = \refrainDaveChords

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad" 4 = 90

  \xTextMark \markup{ \bold \box "A1" }

  d4 g4 ef4. ef8 |
  e4 a4 f4. fs8 |
  g4 b4 gs8 a8 b8 c8 | d4 e4 b2 |
  \break
  b4 d4 c8 b8 a8 g8 | fs4 a4 f4 ef4 | d2 fs2 | d1 |
  
  \sect "A2"

  d4 g4 ef4. ef8 | e4 a4 f4. fs8 |
  g4 b4 gs8 a8 b8 c8 | d4 e4 b2 |
  b4 d4 c8 b8 a8 g8 | fs4 a4 f4 ef4 | d2 b'2 | g2. r4 |
  
  \sect "B"
  
  r8 g4 g8 f4 ef4 | c'4 c4 bf4. c8 |
  \tuplet 3/2 { d4 ef4 d4 } cs4 b4 |
  bf4 af4 f2 |
  r8 g4 g8 f4 ef4 | g4 a4 bf4. c8 | d8 d8 d8 d8~ d4 d,4 | bf'2 b2 |

  \sect "A3"

  d,4 g4 ef4. ef8 | e4 a4 f4. fs8 |
  g4 b4 gs8 a8 b8 c8 | d4 e4 b2 |
  b4 d4 c8 b8 a8 g8 | fs4 a4 f4 ef4 | d2 b'2 | g1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #0.1
}

\include "../Include/refrain.ily"

$(if #(not (string-contains instrument "Standard"))
     #{ \pageBreak #} )

performanceNotes =
\markup {
  \column {
    \line { \huge { Intro: guitar solo over A1 (turnaround to A1) } }
    \line { \huge { First chorus: vocal entire form } }
    \line { \huge { Clarinet solo A1 A2 } }
    \line { \huge { Guitar solo B A2 (turnaround to B) } }
    \line { \huge { Vocal B A3 } }
    \line { \huge { Ending: ritard, stretch out last note } }
  }
}

\include "../Include/notes.ily"

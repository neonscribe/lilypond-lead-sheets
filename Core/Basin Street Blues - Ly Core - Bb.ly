%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Basin Street Blues"
  subtitle = \instrument
  composer = "Spencer Williams"
  copyright = "© 1928 - 1933 by Mayfair Music Corp., 1619 Broadway, New York, N.Y."
}

verseLyrics = \lyricmode {
  Won't -- cha come a -- long with me,
  \repeat unfold 5 { \skip 1 }
  To the Mis -- sis -- sip -- pi?
  \repeat unfold 6 { \skip 1 }
  We'll take the boat to the land of dreams, __
  Steam down the riv -- er down __ to New __ Or -- leans. __
  The band's there to meet us,
  \repeat unfold 5 { \skip 1 }
  Old friends to greet us,
  \repeat unfold 5 { \skip 1 }
  Where all the light and the dark folks meet, __
  Heav -- en on earth, they call __ it Bas -- in Street. __
}

verseChords = \chordmode {
  \chordInsideParens{ f4:7 }
  bf4 c4:m7 cs8:dim7 bf4./d bf4 c4:m7 cs8:dim7 bf4./d
  bf4/d df4:m6 c8:m7 f4.:9 bf4/d df4:m6 c8:m7 f4.:9
  bf2 bf2:7/af ef2:6/g ef2:m6/gf bf4/f r2. r2. f4:7
  
  bf4 c4:m7 cs8:dim7 bf4./d bf4 c4:m7 cs8:dim7 bf4./d
  bf4/d df4:m6 c8:m7 f4.:9 bf4/d df4:m6 c8:m7 f4.:9
  bf2 bf2:7/af ef2:6/g ef2:m6/gf bf4/f r2. r1
}

verseKey = bf

verseMelody = \relative f' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempo "Med. Slow Swing (Dixieland)" 4 = 110

  \mark \markup{ "Verse" }
  
  \partial 4 f8 f8 |
  \bar "||"
  
  d8 d8 ef4 e8 f4. | d8 d8 ef4 e8 f4. |
  \break
  bf8 bf8 af8 g8 f8 g4. | bf8 bf8 af8 g8 f8 g4. |
  \break
  f8 bf4 f8 bf4 f8 f8 | bf4 bf8 c8~ c2 |
  \break
  bf4 af8 g8 f8 g8 \tuplet 3/2 { d8( ef8) e8 } | f8( ef8) d8 bf8~ bf4 f'4 |
  \break
  d4 ef8 ef8 e8 f4. | d4 ef8 ef8 e8 f4. |
  \break
  bf4 af8 g8 f8 g4. | bf4 af8 g8 f8 g4. |
  \break
  f8 bf4 f8 bf4 f8 f8 | bf4 bf8 bf8~ bf2 |
  \break
  bf4 af8 g8 f8 g8 \tuplet 3/2 { d8( ef8) e8 } | f8( ef8) d8 bf8~ bf2 |
  

  \bar "||"
  \pageBreak
}

refrainLyrics = \lyricmode {
  Ba -- sin Street __ is the street __ where the e -- lite __ al -- ways meet, __
  In New Or -- leans, __ Land of dreams, __
  You'll nev -- er know how nice it seems or just how much it real -- ly means,
  Glad to be, __ Yes, sir -- ree, __ where wel -- come's free, __
  Dear to me, __ Where I can lose __ my Ba -- sin Street blues. __
}

refrainChords = \chordmode {
  bf1 d1:7 g1:9 g1:9
  c1:9 f1:13 bf2/d cs2:dim7 c2:m7 f2:9
  bf1 d1:7 g1:9 af2:7 g2:7
  c1:9 f1:13
  bf4 bf4:7/d ef4:6 e4:dim7
  bf4/f b4:dim7 c4:m7 f4:7
  bf4/f f8:7 bf8:6 s2
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Med. Slow Swing (Dixieland)" 4 = 110

  \set Score.currentBarNumber = #1
  
  \mark \markup{ "Refrain" }

  \bar ".|:"
  \repeat volta 2 {
    d8 d4 d8~ d2 | d8 d4 d8~ d4 r8 d8 |
  \break
    d8 a'4 d,8~ d2 | a'8 a4 g8~ g4 d4 |
  \break
    d8 d4 d8~ d2 | d8 f4 d8~ d4 f4 |
  \break
    c'8 c8 bf8 bf8 a8 a8 g8 g8 | bf8 bf8 a8 a8 g8 g8 f4 |
  \break
    d8 d4 d8~ d2 | a'8 a4 fs8~ fs4 d4 |
  \break
    d8 a'4 g8~ g2 |
    ef 8 ef4 d8~ d4 d4 |
  \break
    d8 a'4 g8~ g2 | 
    r4 d4 f8 d8 c8 bf8~ | 
  \break
   bf1 |
  }
  \alternative {
    { r1 }
    { f'4 a8 bf8~ bf2\fermata }
  }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"

\include "../Include/refrain.ily"

performanceNotes =
\markup {
  \column {
    \line { \huge { Vocal and band call and response start verse, drums in time bar 8 } }
    \line { \huge { Vocal refrain, clarinet solo refrain, guitar solo refrain, Vocal last refrain } }
  }
}

\include "../Include/notes.ily"

%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Sidewinder"
  subtitle = \instrument
  poet = ""
  composer = "Lee Morgan"
  copyright = "© 1959 Conrad Music"
}

introLyrics = \lyricmode {
}

introChords = \chordmode {
  s1
  s4 d4:7 s8 ef8:7 s4
  s4 d4:7 s8 ef8:7 s4
  s4 d4:7 s8 ef8:7 s4
  s4 d4:7 s8 ef8:7 s4
}

introKey = ef

introMelody = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef \whatClef
  \tempo "Swing" 4 = 163

  r1 |
  \bar ".|:"
  r4 c'4-. r8 df8-> r4 | r4 c4-. r8 df8-> r4 | r8 c8 df4 ef4 f4 | c8 df8 c8 bf8~ bf2 |
  \bar"|"
}

introBass = \relative f' {
  \clef bass
  
  r4 r8 bf,8 r8 af8 e4 |
  ef4 r8 ef8 bf4 df4 | ef4 r8 ef8 bf4 df4 | ef4 r8 ef8 bf4 df4 | ef4 r8 ef8 bf4 df4 | 
}

introKicksOverTime = \relative f' {
  s1 |
  r4 c4 r8 c8 r4 | r4 c4 r8 c8 r4 | r4 c4 r8 c8 r4 | r4 c4 r8 c8 r4 |
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s4 d4:7 s8 ef8:7 s4
  s4 d4:7 s8 ef8:7 s4
  s4 d4:7 s8 ef8:7 s4
  s4 d4:7 s8 ef8:7 s4
  \chordInsideParens{ af4:7 } g4:7 s8 af8:7 s4
  s4 g4:7 s8 af8:7 s4
  s4 g4:7 s8 af8:7 s4
  s4 g4:7 s8 af8:7 s4
  \chordInsideParens{ ef4:7 } d4:7 s8 ef8:7 s4
  s4 d4:7 s8 ef8:7 s4
  s4 d4:7 s8 ef8:7 s4
  s4 g4:m7.5- s8 c8:7.9- s4
  s4 f4 s8 g8:m/c s4
  s4 f4 s8 g8:m/c s4
  s4 f4 s8 g8:m/c s4
  s4 f4/bf s8 ef8:7 s4
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  r4_"Bass & Rhythm - Continue Simile" c'4-. r8 df8-> r4 | r4 c4-. r8 df8-> r4 |
  r8 c8 df4 ef4 f4 | fs8 g8 ef8 df8 r8 a4.->
  \break

  af4 f'4-. r8 gf8-> r4 | r4 f4-. r8 gf8-> r4 |
  r8 f8 gf8 af8 bf8 af8 gf8 f8 | af8 ef8 f8 
  \override Glissando.style = #'zigzag
  gf8~ gf8\glissando
  bf,8 af8 bf8 |
  \break

  ef,4 c'4-. r8 df8-> r4 | r4 c4-. r8 df8-> r4 | 
  r8 bf8 c8 df8 ef8 f4. | r8 g,8 af8 a8 bf8 c4. |
  \break
  
  r4 f,4-. r8 g8-> r4 | r4 f4-. r8 g8-> r4 |
  r8 f8 g4 af4 a4 | a8 bf8 af8 e8 r8 e8 df8 e8 |
}

codaLyrics = \lyricmode {
}

codaChords = \chordmode {
  \chordInsideParens{ ef4:7 } d4:7 s8 ef8:7 s4
  s4 d4:7 s8 ef8:7 s4
  ef4:7 r4*7

  ef4:7 r4*3
}

codaKey = ef

codaMelody = \relative f' {
  \time 4/4
  \key \codaKey \major
  \clef \whatClef

  ef4 c'4-. r8 df8-> r4 | r4 c4-. r8 df8-> r4 |
  r4 r8 bf16 df16 ef8 ef8 ef16 bf16 df8 | ef4 r8 df8~ df8 bf8 af8 bf8 |
  \bar ":|."
  ef,4_"(Ending)" r4 r2 |
  \bar "|."
}

codaBass = \relative f' {
  \time 4/4
  \key \codaKey \major
  \clef bass
  
  ef,4 r8 ef8 bf4 df4 | ef4 r8 ef8 bf4 df4 |
  ef4 r4 r2 | r4 r8 bf'8 r8 af8 e4 |
  ef4 r4 r2 |
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro-with-bass-and-kicks.ily"

\include "../Include/refrain.ily"

\include "../Include/coda-with-bass.ily"

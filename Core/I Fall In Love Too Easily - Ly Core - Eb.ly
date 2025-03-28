%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "I Fall In Love Too Easily"
  subtitle = \instrument
  poet = "Sammy Cahn"
  composer = "Jule Styne"
  copyright = \markup \small "© 1944 Metro-Goldwyn Mayer, Inc."
}

verseLyrics = \lyricmode {
  There are those who can leave love or take it. __
  Love to them is just what they make it. __
  I wish that I were the same, __
  But love is my fav' -- rite game.
}

verseChords = \chordmode {
  s4 f2:m7 bf2:9 ef1
  f2:m7 bf2:7 ef1 bf2 c4:m7 f4:7
  bf4 a4:7 bf4 g4:7 c2:m7 f2:7 f2:m7 bf2:7
}

verseKey = ef

verseMelody = \relative f' {
  \time 4/4
  \key \verseKey \major
  \clef \whatClef
  \tempo "Freely"

  \xTextMark \markup{ "Verse" }
  
  \partial 4 af8 g8 |
  \bar "||"

  f4 f8 f8 f4 f8 f8 | f8 g4.~ g4 af8 g8 |
  \break
  f4. f8 f4 ef8 d8 | d8 ef4.~ ef2 | f4 d8 f8 bf4 a8 f8 |
  \break
  d4( cs4 d4.) d8 | ef4 f8 g8 d8 ef4. | f1
  
  \bar "|."
}

refrainLyrics = \lyricmode {
I fall in love too eas -- i -- ly,
I fall in love too fast,
I fall in love too ter -- ri -- bly hard __
for love to ev -- er last.

My heart should be well schooled, __
'cause I've been fooled in the past, __
and still I fall in love so eas -- i -- ly __
I fall in love too fast.
}

refrainNewRealChords = \chordmode {
  f2:m7 bf2:13.9- ef2:maj7 af2:maj7 d2:m7.5- g2:7.9+.5+ c2:m7 a2:7.5-
  d2:m7.5- g2:7.9+.5+ c2:m7 c2:m7/bf a2:m7.5- af2:13.11+ d2:m7.5- g2:7
  
  a2:m7.5- d2:7.9+.5+ g2.:13 df4:7.9+ c2:sus9 c2:7.9- f2:m7 \chordInsideParens{ c2:7.9- }
  f2:m7 af4:m9 df4:9 g2:7.9+.5+ c2:7.9- f2:m9 bf2:13.9- ef2:6.9 gf2:13
}

refrainRealBookIIIChords = \chordmode {
  f2:m7 bf2:7 ef2:maj7 c2:m7 d2:m7.5- g2:7.9- c1:m7
  d2:m7.5- g2:7.9- c1:m7 d2:7 af2:7.11+ g1:maj7
  
  a2:m7.5- d2:7.9+ g1:7 g2:m7 c2:7 f2:m7 c2:7.5+
  f2:m7 bf2:9 df2:7.11+ c2:7 f2:m7 bf2:13 ef1:6.9
}

refrainHLRealBookVIChords = \chordmode {
  f2:m7 bf2:7 ef1:maj7 d2:m7.5- g2:7.5+ c1:m7
  d2:m7.5- g2:7.5+ c1:m7 a2:m7.5- af2:9.11+ g2:sus7 g2:7
  
  c2:m7 d2:7 g1:7 c2:sus7 c2:7 f2:m7 c2:7.5+
  f2:m7 bf2:7 g2:7.5+ c2:7.9- f2:m7 bf2:7.9- ef2:6
  \chordOpenParen{ g4:m7 }
  \chordCloseParen{ c4:7.5+.9- }
}

refrainColoradoCookbookChords = \chordmode {
  f2:m7 bf2:7 ef1:maj7 d2:m7.5- g2:7.9- c1:m7
  d2:m7.5- g2:7.9- c1:m7 d2:7 af2:7.11+ g1:7
  
  a2:m7.5- d2:7.9- g1:7 g2:m7 c2:7 f2:m7 c2:7
  f2:m7 bf2:9 df2:7.11+ c2:7 f2:m7 bf2:13 ef1:6.9
}

refrainChords = \refrainHLRealBookVIChords

refrainKey = ef

refrainMelody = \relative f'' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Ballad" 4 = 65

  \xTextMark \markup{ "Refrain" \bold \box "A" }
  
  r8 c8 b8 c8 bf4. af8 | g8 af8 g2. | r8 af8 g8 af8 g4. f8 | ef1 |
  \break
  r8 f8 e8 f8 ef4. d8 | c8 d8 ef8 g8~ g2 | r8 fs8 g8 a8 d4 d4 | d1 |
  
  \sect "B"
  
  r8 ef8 d8 ef8 d4. c8 | b2~ b8 g8 af8 g8 | c2. bf8 c8 | af2~ af8 g8 af8 g8 |
  \break
  c4. c8 bf4. af8 | \tuplet 3/2 { g8 af8 g8~ } g2. | r8 g8 f8 ef8 g4. g8 | ef2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"

\markup {
  % Leave a gap after the verse
  \vspace #2
}

\include "../Include/refrain.ily"

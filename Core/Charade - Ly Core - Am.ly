%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 17) #}
)

\header {
  title = "Charade"
  subtitle = \instrument
  poet = "Johnny Mercer"
  composer = "Henry Mancini"
  copyright = "© 1963 Northridge Music Co."
}

refrainLyrics = \lyricmode {
  When we played our cha -- rade__
  We were like chil -- dren pos -- ing,
  Play -- ing at games, act -- ing out names,
  Guess -- ing the parts we played. __
  
  Oh, what a hit we made, __
  We came on next to clo -- sing; __
  Best on the bill, lov -- ers un -- til
  love left the mas -- que -- rade. __
  
  Fate __ seemed to pull the strings,
  I turned and you were gone. __
  While __ from the dark -- ened wings
  the mu -- sic box played on. __
  
  Sad lit -- tle se -- re -- nade, __
  Song of my heart's com -- pos -- ing; __
  I hear it still, I al -- ways will,
  Best on the bill cha -- rade.
}

refrainChords = \chordmode {
  a2.:m a2.:m7+ a2.:m7 a2.:m6 
  a2.:m a2.:m e2.:7 e2.:7 
  b2.:m7.5- e2.:7 b2.:m7.5- e2.:7
  b2.:m7.5- e2:5+ e4:7 a2.:m a2.:m

  a2.:m a2.:m7+ a2.:m7 a2.:m6 
  a2.:m a2.:m e2.:7 e2.:7 
  b2.:m7.5- e2.:7 b2.:m7.5- e2.:7
  b2.:m7.5- e2:5+ e4:7 a2.:m a2.:m

  d2.:m7 g2.:7 c2.:maj7 a2.:m7
  d2.:m7 g2.:7 c2.:maj7 cs2.:dim7
  d2.:m7 g2.:7 c2.:maj7 a2.:m
  d2.:7 d2.:9 d2.:m7 e2.:7

  a2.:m a2.:m7+ a2.:m7 a2.:m6 
  a2.:m a2.:m e2.:7 e2.:7 
  b2.:m7.5- e2.:7 b2.:m7.5- e2.:7
  b2.:m7.5- e2:5+ e4:7 a2.:m a2.:m
}

refrainKey = a

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Jazz Waltz [Blossom Dearie 1964]" 4 = 186

  \xTextMark \markup{ \bold \box "A1" }
  
  e4 f4 e4 | b'2 a4 | e2.~ | e2. |
  e4 f4 e4 | d2 c4 | e4 b2~ | b2. |
  d4 e4 d4 | b2. | d4 e4 d4 | b2. |
  d4 e4. d8 | c2 b4 | a2.~ | a2. |
  
  \sect "A2"
  
  e'4 f4 e4 | b'2 a4 | e2.~ | e2. |
  e4 f4 e4 | d2 c4 | e4 b2~ | b2. |
  d4 e4 d4 | b2. | d4 e4 d4 | b2. |
  d4 e4. d8 | c2 b4 | a2.~ | a2. |
  
  \sect "B"
  
  a'2.~ | a4 b4 c4 | b2 g4 | e2 c4 |
  a2. | f'4 d4 b4 | g'2.~ | g2. |
  a2.~ | a4 b4 c4 | b2 g4 | e2 c4 |
  b2 a4 | b2 c4 | d2.~ | d2. |
  
  \sect "A3"

  e4 f4 e4 | b'2 a4 | e2.~ | e2. |
  e4 f4 e4 | d2 c4 | e4 b2~ | b2. |
  d4 e4 d4 | b2. | d4 e4 d4 | b2. |
  d4 e4 f4 | c'2 b4 | a2. | r2. |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

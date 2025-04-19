%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Sway (¿Quién será?)"
  subtitle = \instrument
  poet = "English lyrics by Norman Gimbel"
  composer = "Pablo Beltrán Ruiz"
  copyright = \markup \small "© 1953 Editorial Mexicana de Musica International SA"
}

bossaRhythm = ##t

refrainLyrics = \lyricmode {
When ma -- rim -- ba rhy -- thms start to play, dance with me, make me sway.
Like the la -- zy o -- cean hugs the shore, hold me close, sway me more.

Like a flow -- er bend -- ing in the breeze, bend with me, sway with ease.
When we dance you have a way with me, stay with me, sway with me.

Oth -- er danc -- ers may be on the floor, dear, but my eyes will see on -- ly you.
On -- ly you have that mag -- ic tech -- nique, when we sway I grow weak.

_ _ _ _ _

I can hear the sound of vi -- o -- lins, long be -- fore it be -- gins.
Make me thrill as on -- ly you know how, sway me smooth, sway me now.

(When ma -- rim -- ba rhy -- thms)
}

refrainChords = \chordmode {
  s2.
  
  fs2:m7.5- b2:7fs2:m7.5- b2:7 e1:m e1:m
  c2:9 b2:9 c2:9 b2:9 e1:m6 e1:m6

  fs2:m7.5- b2:7fs2:m7.5- b2:7 e1:m e1:m
  c2:9 b2:9 c2:9 b2:9 e1:m6 e4:m6 g4:6/b bf2:dim7
  
  d2:7/a d2:7 d1:7 g1:maj7 g1:maj7
  b1:7 b1:7 e2:m c2:7 b1:7

  fs2:m7.5- b2:7fs2:m7.5- b2:7 e1:m e1:m
  c2:9 b2:9 c2:9 b2:9 e1:m6 e1:m6
}

refrainKey = e

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Latin [Dean Martin 1954]" 4 = 120

  \partial 2. b8 b8 b8 b8 b8 b8 |
  \bar "||"

  \sectStart "A1"
  
  c4 b8 a8 r2 | c4 b8 a8 r2 | b4 a8 g8~ g2 | r4 g8 g8 g8 g8 g8 g8 |
  \break
  a4 g8 fs8 r2 | a4 g8 fs8 r2 | g4 fs8 e8~ e2~ | e4 b'8 b8 b8 b8 b8 b8 |
  
  \sect "A2"
  
  c4 b8 a8 r2 | c4 b8 a8 r2 | b4 a8 g8~ g2 | r4 g8 g8 g8 g8 g8 g8 |
  \break
  a4 g8 fs8 r2 | a4 g8 fs8 r2 | g4 fs8 e8~ e2~ | e4  e8 fs8 g4 fs8 e8 |
  
  \sect "B"
  
  fs4 fs8 g8 a2 | r4 fs8 g8 a4 b8 c8 | d4 d8 b8 d2~ | d4 b8 c8 b4 c8 b8 |
  \break
  ds4 ds8 b8 ds2~ | ds4 b8 cs8 ds4 cs8 b8 | e4 b8 b8 d4 c4 | b4 b8 b8 b8 b8 b8 b8 |

  \sect "A3"

  c4 b8 a8 r2 | c4 b8 a8 r2 | b4 a8 g8~ g2 | r4 g8 g8 g8 g8 g8 g8 |
  \break
  a4 g8 fs8 r2 | a4 g8 fs8 r2 | g4 fs8 e8~ e2~ | e4 
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  b'8 b8 b8 b8 b8
  \endParenthesis \parenthesize
  b8 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

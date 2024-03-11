%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Castaways, from The Backyardigans"
  subtitle = \instrument
  composer = "Douglas Wieselman, Evan Lurie, Leslie Valdes and Paul Smith"
  copyright = "© 2005 Tunes by Nickleodeon, Inc."
}

bossaRhythm = ##t

refrainLyrics = \lyricmode {
Cast -- a -- ways, __ we are cast -- a -- ways. __
A -- hoy __ there, a -- hoy, __ we are cast -- a -- ways. __
We're stuck where we are
with no house, no car.
Cast -- a -- ways, __ a -- hoy, __ we are cast -- a -- ways. __
We were out at sea __ on a sail -- ing ship.
The rain be -- gan to rain, __ and the wind be -- gan to whip.
We felt the ship tip, it was go -- ing down.
So we launched our life -- boat, __ so we would -- n't drown. __
Cast -- a -- ways, __ we are cast -- a -- ways. __
A -- hoy __ there, a -- hoy, __ we are cast -- a -- ways. __
On an is -- land at sea,
just me (me, and me.)
Cast -- a -- ways, __ a -- hoy, __ we are cast -- a -- ways. __
}

refrainChords = \chordmode {
  f1:maj7 f1:maj7 f1:maj7 f1:maj7 f1:maj7 fs1:dim7
  g1:m7 c1:9 g1:m7 c1:9 g1:m7 c1:9 g1:m7 c1:9
  f1:maj7 f1:maj7
  
  d1:m7 g1:7 c1:maj7 c1:maj7
  c1:m7 f1:7 bf1:maj7 bf1:maj7
  
  b1:m7.5- e1:7.13-.9+ a1:m7 a1:m7
  d1:7 d1:7 g1:7 c1:9

  f1:maj7 f1:maj7 f1:maj7 f1:maj7 f1:maj7 fs1:dim7
  g1:m7 c1:9 g1:m7 c1:9 g1:m7 c1:9 g1:m7 c1:9
  f1:maj7 f1:maj7
}

refrainKey = f

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Bossa nova" 2 = 82
  
  \mark \markup{ \box "A1" }
  
  a4 f8 d8~ d2 | r2 c'4 bf4 | a4 f8 d8~ d2 |
  r2 r4 c8 d8~ | d8 a'4. r4 c,8 d8~ | d4 r4 a'4 c4 |
  \break
  c4 f,8 d8~ d2 | r2 r4 c4 |
  
  d4 d4 c'4 a4 |
  r2 c,4 c4 | d4 r4 c'4 a4 | r1 |
  \break
  c4 f,8 d8~ d4 c8 a'8~ | a4 r4 a4 c4 | a4 f8 d8~ d2 |
  r 1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  d4 e8 f4 g4 a8~ | a2 r8 g4 f8 |
  e4 g4 e4 r4 | r2 r4 r8 g,8 | c4 d8 ef4 f4 g8~ |
  g2 r8 f4 ef8 |
  \break
  d4 f8 d4 f4 d8 | r2 r4 e4 |
  f4. f4 e4 g8~ | g2 r8 f4 e8 | d8 e4 c8~ c2 |
  r2 r8 g8 e'4 |
  \break
  d4. d4 e4 d8~ | d2 r8 d8 a'4 |
  g8 a4 g8~ g2 | r1 |
  

  \bar "||"
  \break

  \mark \markup{ \box "A2" }

  a4 f8 d8~ d2 | r2 c'4 bf4 | a4 f8 d8~ d2 |
  r2 r4 c8 d8~ | d8 a'4. r4 c,8 d8~ | d4 r4 a'4 c4 |
  \break
  c4 f,8 d8~ d2 | r2 c4 c4 |
  
  d4 d4 c'4 a4 |
  r2 r4 c,4 | d4 d4 c'4 a4 | r1 |
  \break
  c4 f,8 d8~ d4 c8 a'8~ | a4 r4 a4 c4 | a4 f8 d8~ d2 |
  r 1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

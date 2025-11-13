%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Bohemia After Dark"
  subtitle = \instrument
  poet = ""
  composer = "Oscar Pettiford"
  copyright = \markup \small { \now " " "© 1955 Orpheus Music, Inc." }
}

refrainChords = \chordmode {
  g1:m a2:m7.5- d2:7 g1:m a2:m7.5- d2:7 
  g1:m a2:m7.5- d2:7 g1:m ef4:7 d4:7 g4:m d4:7

  g1:m a2:m7.5- d2:7 g1:m a2:m7.5- d2:7 
  g1:m a2:m7.5- d2:7 g1:m g1:m
  
  g1:m9/c g1:m9/c g1:m9/c g1:m9/c 
  g1:m9/c g1:m9/c g1:m9/c  ef2:7 d2:7.9-


  g1:m a2:m7.5- d2:7 g1:m a2:m7.5- d2:7 
  g1:m a2:m7.5- d2:7 g1:m ef4:7 d4:7 g4:m
  \chordInsideParens{ d4:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium-Fast [Kenny Clarke, Cannonball Adderley 1955]" 4 = 176

  \sectStart "A1"
  
  r8 fs,8 g8 a8 bf8 d8 g8 bf8 | d8 c4.~ c2 | r8 fs,,8 g8 a8 bf8 d8 g8 bf8 | df8 c8 bf8 g8 c8 bf8 g4-. |
  \break
  r8 fs,8 g8 a8 bf8 d8 g8 bf8 | d8 c4.~ c4 r8 g8 | cs8 d8 g8 df8 c8 bf8 g8 bf8 | c4 bf8 g8~ g2 |
  
  \sect "A2"

  r8 fs,8 g8 a8 bf8 d8 g8 bf8 | d8 c4.~ c2 | r8 fs,,8 g8 a8 bf8 d8 g8 bf8 | df8 c8 bf8 g8 c8 bf8 g4-. |
  \break
  r8 fs,8 g8 a8 bf8 d8 g8 bf8 | d8 c4.~ c4 r8 g8 | cs8 d8 g8 df8 c8 bf8 g8 bf8 | g2 r8 g8 bf8 g8 |
  
  \sect "B"
  
  c8 g8 bf8 g8 c8 bf8 g4~ | g2 r8 g8 d'8 g,8 | bf8 g8 c8 g8 d'8 g,8 f4~ | f2 r8 g8 c8 g8 |
  \break
  bf8 g8 c8 g8 c8 g8 d'4~ | d2 r8 c8 g8 c8 | d8 g,8 c8 f,8 d8 g8 a4~ | a1 |
  
  \sect "A3"

  r8 fs,8 g8 a8 bf8 d8 g8 bf8 | d8 c4.~ c2 | r8 fs,,8 g8 a8 bf8 d8 g8 bf8 | df8 c8 bf8 g8 c8 bf8 g4-. |
  \break
  r8 fs,8 g8 a8 bf8 d8 g8 bf8 | d8 c4.~ c4 r8 g8 | cs8 d8 g8 df8 c8 bf8 g8 bf8 | c4 bf8 g8~ g2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

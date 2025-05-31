%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Minor Swing"
  subtitle = \instrument
  poet = ""
  composer = "Django Reinhardt"
  copyright = \markup \small "© 1938 Publications Francis Day S.A."
}

refrainChords = \chordmode {
  a1:m6 d1:m6 a1:m6 d1:m6
  a1:m6 d1:m6 e4:7 r4*7

  a1:m6 a1:m6 d1:m6 d1:m6
  e1:7 e1:7 a2:m6 e2:7 a2:m/c cs2:dim7

  d1:m6 d1:m6 a1:m6 a1:m6
  e1:7 bf1:7 a1:m6 e1:7
  
  a1:m6 a1:m6 d1:m6 d1:m6
  e1:7 e1:7
  
  a4:m6 r4*7
  
  r8*13 <a c' e' fs' b'>4.
}

refrainKey = a

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Swing" 4 = 210

  \sectStart "Intro"
  
  \bar ".|:"
  \repeat volta 2 {
  <e a>4 <a c>4 \afterGrace <c e>2( { <d f>8 <c e>8) } | <b d>4 <d f>8 <f a>8 r2 |
  <e, a>4 <a c>4 \afterGrace <c e>2( { <d f>8 <c e>8) } | <b d>4 <d f>8 <f a>8 r2 |
  \break
  <e, a>4 <a c>4 \afterGrace <c e>2( { <d f>8 <c e>8) } | <b d>4 <d f>8 <f a>8 r2 |
  <d fs b>4 r4^"Bass Break" r2 | r1 |
  }

  \sect "Solos"
  
  \bar ":|.|:"
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \bar "||-||"
  \break

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  }

  \sectNoBar "Outro"
  
  \bar ":|.|:"
  \repeat volta 2 {
  a4 c4 e2 | a,4 c8 e8 r8 e4. | d4 f4 a2 | d,4 f8 a8 r8 a4. |
  \break
  e4 gs4 b2 | e,4 gs8 b8 r4 c4 |
  \alternative { \volta 1 {
  a4 r4^"Bass Break" r2 | r1 |
  } \volta 2 {
  r8 e8 ds8 e8 f8 fs8 g8 gs8 | a4 e,8 bf8 r8 <a fs' c' e>4. |
  } } }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

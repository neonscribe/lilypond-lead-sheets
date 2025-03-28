%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Footprints"
  subtitle = \instrument
  poet = ""
  composer = "Wayne Shorter"
  copyright = \markup \small "© 1966 Miyako Music"
}

refrainLyrics = \lyricmode {
}

refrainShorterBioChords = \chordmode {
  c1.:m11 c1.:m11 c1.:m11 c1.:m11
  f1.:m11 f1.:m11 c1.:m11 c1.:m11
  fs2.:m9 b2.:7.9+.5+ e2.:7.9+ a2.:7.5+.9+.11+
  c1.:m11 c1.:m11
}

refrainNewRealChords = \chordmode {
  c1.:m11 c1.:m11 c1.:m11 c1.:m11
  f1.:m11 f1.:m11 c1.:m11 c1.:m11
  fs2.:m11.5- f2.:13.11+ e2.:7.5-.9+ a2.:7.5+.9+.11+
  c1.:m11 c1.:m11
}

refrainMattRybickiReggieWorkmanChords = \chordmode {
  c1.:m11 c1.:m11 c1.:m11 c1.:m11
  f1.:m11 f1.:m11 c1.:m11 c1.:m11
  fs2.:m9.5- f2.:13.11+ e2.:9.5- a2.:7.13-.9+
  c1.:m11 c1.:m11
}

refrainChords = \refrainMattRybickiReggieWorkmanChords

refrainKey = c

refrainMelody = \relative f' {
  \time 6/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 174

  <bf f>4 <bf f>4 <bf f>4 <bf f>8 <c g>8~ <c g>4. <a e>8 |
  \tuplet 5/3 { <bf f>4 <a e>4 <g d>4 <f c>4 <d a>4~ } <d a>2 <c g>4-. |
  r2 r8 <d a>8~ <d a>2 <c g>4-. | r2 r8 <d a>8~ <d a>2 <c g>4-. |
  <bf' f>4 <bf f>4 <bf f>4 <bf f>8 <c g>8~ <c g>4. <d af>8 |
  \tuplet 5/3 { <ef bf>4 <d af>4 <c g>4 <bf f>4 <g d>4~ } <g d>2 <f c>4-. |
  \tuplet 5/3 { <bf f>4 <a e>4 <g d>4 <f c>4 <d a>4~ } <d a>2 <c g>4-. |
  r2 r8 <d a>8~ <d a>2 <c g>4-. |
  <b' fs>4 <b fs>4 <b fs>4 <b f>8 <d a>8~ <d a>4. <g, d>8 |
  <bf f>2.\glissando <g d>4. <c g>8 <g d>8 <gf df>8 |
  <f c>1.~ | <f c>1. |

  \bar "|."
}

refrainBass = \relative f' {
  \time 6/4
  \key \refrainKey \minor
  \clef bass

  c,4 g'4 c4 ef2~ ef8 g,8 | c,4 g'4 c4 ef2~ ef8 g,8 |
  c,4 g'4 c4 ef2~ ef8 g,8 | c,4 g'4 c4 ef2~ ef8 g,8 |
  c,4 f4 bf4 ef2~ ef8 af,8 | c,4 f4 bf4 ef2~ ef8 af,8 |
  c,4 g'4 c4 ef2~ ef8 g,8 | c,4 g'4 c4 ef2~ ef8 g,8 |
  \rsq \rsq \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq \rsq \rsq |
  c,4 g'4 c4 ef2~ ef8 g,8 | c,4 g'4 c4 ef2~ ef8 g,8 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-with-bass.ily"

\markup{ "Top line is melody. Play head twice before and twice after solos." }

%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Songe d'Automne"
  subtitle = \instrument
  poet = ""
  composer = "Archibald Joyce"
  copyright = "© 1908 Francis, Day & Hunter"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  c2.:m c2.:m/b c2.:m/bf c2.:m/a
  af2. f2.:m fs2.:dim7 g2.:7

  c2.:m g2.:7.5+ c2.:m ef2 e4:dim7
  f2.:m7 bf2.:7 ef2. g2.:7

  c2.:m g2.:7 g2.:7 c2.:m
  bf2.:m7 ef2.:7 af2. g2.:7

  c2.:m/g gf2.:dim7 c2.:m/g af4:7 r2
  d2.:7 g2.:7 c2.:m c2.:7
  
  f2.:m f2.:m c2.:m c2.:m
  d2.:7 g2.:7 c2.:m c2.:m
}

refrainKey = c

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Tempo di Valse" 4 = 100

  \textMark \markup{ \bold \box "A" }
  
  g2. | c2. | ef2. | g2. |
  \break
  g2. f2 c4 | ef2. d2 g,4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  c2. | ef2. | g2. | bf2. |
  \break
  bf2.~ | bf2 af4 | g2. | r8 g,8 a8 b8 c8 d8 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "C" }
  
  ef2. | d2. | d2. | c2. |
  \break
  c2. bf2 g4 | ef2. | f2. |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "D" }
  
  g2. | gf2. | g2. | af2 c4 |
  \break
  ef2. | d2. | c2.~ | c2. |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "E" }
  
  \bar ".|:"
  \repeat volta 2 {
  \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | \rsq \rsq \rsq | 
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

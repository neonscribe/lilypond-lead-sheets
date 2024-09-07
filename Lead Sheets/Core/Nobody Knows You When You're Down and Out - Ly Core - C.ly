%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Nobody Knows You When You're Down and Out"
  subtitle = \instrument
  poet = ""
  composer = "Jimmie Smith"
  copyright = "© 1923"
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s4.
  
  c2. e2.:7 a1.:7 d2.:m7 g2.:7 c2. g2.:7

  c2. e2.:7 a1.:7 d2.:m a2.:7 d1.:m
  f2. d2.:7/fs c2. a2.:7 d1.:7 g1.:7
  
  c2. e2.:7 a1.:7 d2.:m a2.:7 d1.:m
  f2. d2.:7/fs c2. a2.:7 d1.:7 d8*8:7 ds8*2:7 e8*2:7
  
  f1.:7 f8*8:7 e8*2:7 ef8*2:7 d1.:7 g1.
  c8 s4 r8*12 c8*9:7.9+
}

refrainKey = c

refrainMelody = \relative f' {
  \time 12/8
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Slow Blues" 4. = 54

  \partial 4. r8 r8 r8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "Intro" }
  
  r4. r4. r4. r4. | r4. r4. r4. r4. |
  r4. r4. r4. r4. | r4. r4. r4. r4. | 
  
  \break

  
  \bar ".|:-||"
  \repeat volta 2 {
  r4. r4.
  \xTextMark \markup{ \bold \box "Verses, Chorus, Solos" }
  r4. r4. |
  r4. r4. r4. r4. |
  r4. r4. r4. r4. | r4. r4. r4. r4. | 
  \break
  r4. r4. r4. r4. | r4. r4. r4. r4. |
  r4. r4. r4. r4. | r4. r4. r4. r4. | 
  }
  \break

  \xTextMark \markup{ \bold \box "Last Chorus and Outro" }
  
  r4. r4. r4. r4. | r4. r4. r4. r4. |
  r4. r4. r4. r4. | r4. r4. r4. r4. | 
  \break
  r4. r4. r4. r4. | r4. r4. r4. r4. |
  r4. r4. r4. r4. | r4. r4. r4 r4 r4 | 
  \break
  r4. r4. r4. r4. | r4. r4. r4 r4 r4 |
  r4. r4. r4. r4. | r4. r4. r4. r4. |
  r4. r4. r4. r4. | r4. r4. r4. r4. |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

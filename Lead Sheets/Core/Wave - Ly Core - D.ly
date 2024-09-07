%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Wave"
  subtitle = \instrument
  poet = ""
  composer = "Antônio Carlos Jobim"
  copyright = "© 1967 Corcovado Music Corp."
}

bossaRhythm = ##t

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  d2:m9 g2:13 d2:m9 g2:13 d2:m9 g2:13 d2:m9 g2:13 
  
  d1:maj7 bf1:dim7 a1:m7 d1:7.9-
  g1:maj7 g1:m6 fs2:13 fs2:7.5+ b2:9 b2:7.9-
  b2:m7/e e2:7 bf2:7 a2:7.5+ d2:m9 g2:13
  
  d2:m9 g2:13
  
  d2:m9 g2:13
  
  g1:m7 c1:9/bf a1:m7 a1:m7
  f1:m7/bf bf1:9/af g1:m7 a1:7.9-

  d1:maj7 bf1:dim7 a1:m7 d1:7.9-
  g1:maj7 g1:m6 fs2:13 fs2:7.5+ b2:9 b2:7.9-
  b2:m7/e e2:7 bf2:7 a2:7.5+ d2:m9 g2:13 d2:m9 g2:13
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Bossa" 4 = 145

  \xTextMark \markup{ \bold \box "Intro" }
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | r2 r8 b8 d8 cs8 |
  
  \break

  \bar ".|:-||"
  \xTextMark \markup{ \bold \box "A1, A2" }
  \repeat volta 2 {
  a2. r8 fs8 | g8 bf8 cs8 e8 g8 fs4 a8~ | a1 | r4 a8 a8~ a8 b4 a8~ |
  \break
  a8 g4 g8 fs4 g4~ | g4 fs8 g8~ g8 a4 fs8~ | fs1 | r8 fs8 a8 af8 g8 fs4 fs8~ |
  \break
  fs8 d8 d8 d8~ d8 b8 d8 e8 | f8 d8 c8 af8 g8 f4 f8~ | f8 d4.~ d2~ |
  \alternative { \volta 1 {
  d2 r8 b'8 d8 cs8 |
  } \volta 2 {
  d1\repeatTie |
  }}}
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  d2 \tuplet 3/2 { c4 bf4 a4 } | g2 \tuplet 3/2 { a4 bf4 d4 } |
  c4. c8 c2~ | c1 |
  \break
  c2~ c8 bf8 af8 g8 | f2 \tuplet 3/2 { g4 af4 c4 } | bf4. bf8 bf2~ | bf2 r8 bf8 d8 cs8 |
  

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }

  a2. r8 fs8 | g8 bf8 cs8 e8 g8 fs4 a8~ | a1 | r4 a8 a8~ a8 b4 a8~ |
  \break
  a8 g4 g8 fs4 g4~ | g4 fs8 g8~ g8 a4 fs8~ | fs1 | r8 fs8 a8 af8 g8 fs4 fs8~ |
  \break
  fs8 d8 d8 d8~ d8 b8 d8 e8 | f8 d8 c8 af8 g8 f4 f8~ | f8 d4.~ d2~ | d1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Pent Up House"
  subtitle = \instrument
  poet = ""
  composer = "Sonny Rollins"
  copyright = \markup \small "© 1956 Prestige Music"
}

refrainChords = \chordmode {
  r1 a2:m7/d d2:7.5+ a4:m7/d d4:7.5+ \chordSlash 1 \chordSlash 1 g2:maj7 af4.:7 g8:maj7
  r1 a2:m7/d d2:7.5+ a4:m7/d d4:7.5+ \chordSlash 1 \chordSlash 1 g2:maj7 af4.:7 g8:maj7
  r1 d2:m7/g g2:7.5+ d4:m7/g g4:7.5+ \chordSlash 1 \chordSlash 1 c1:m7
  f1:7 a2:m7/d d2:7.5+ a4:m7/d d4:7.5+ \chordSlash 1 \chordSlash 1
  g4:maj7 \chordSlash 1 
  \chordOpenParen{ af4:7 }
  \chordCloseParen{ g4:maj7 }
  
  a1:m7 d1:7 g1:maj7 g1:maj7
  a1:m7 d1:7 g1:maj7 g1:maj7
  d1:m7 g1:7 c1:7 f1:7
  a1:m7 d1:7 g1:maj7 g1:maj7
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up Swing" 4 = 200

  \xTextMark \markup{ \bold \box "Head" }

  \bar ".|:"
  \repeat volta 2 {
  r8 d8 e8 fs8 g8 a8 b8 c8 | d8 b4-. d8 bf4-. d8 b8 | r8 d8 bf4-. d8 bf4-. d8 | a2 bf4. a8 |
  \break
  r8 d,8 e8 fs8 g8 a8 b8 c8 | d8 b4-. d8 bf4-. d8 b8 | r8 d8 bf4-. d8 bf4-. d8 | a2 bf4. a8 |
  \break
  r8 d,8 a'8 fs8 g8 a8 b8 d8 | g8 e4-. g8 ef4-. g8 e8 | r8 g8 ef4-. g8 ef4-. g8 | d1 |
  \break
  f8 d4 f8 df2 | d8 b4-. d8 bf4-. d8 b8 | r8 d8 bf4-. d8 bf4-. d8 \textToCodaLastTime | a2. r4 |
  }
  \bar ":|.|:"
  \break

  \xTextMark \markup{ \bold \box "Solos" }
  
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  }
}


codaLyrics = \lyricmode {
}

codaChords = \chordmode {
  g1:maj7
}

codaKey = g

codaMelody = \relative f' {
  \time 4/4
  \key \codaKey \major
  \clef \whatClef

  \textCodaBreak
  
  a4. a8 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

codaRaggedRight = ##t

\include "../Include/coda.ily"

\markup "Head is played twice before and twice after solos."

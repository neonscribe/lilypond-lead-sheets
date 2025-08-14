%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Red Clay"
  subtitle = \instrument
  poet = ""
  composer = "Freddie Hubbard"
  copyright = \markup \small "© 1972 Hubtones Music Co."
}

bridgeKey = c

bridgeChords = \chordmode {
  c1:m7 af1:7 g1:7.5+ c1:m7
  s1*4
}

bridgeMelody = \relative f' {
  \time 4/4
  \key \bridgeKey \minor
  \clef \whatClef
  \tempo "Free Time"
  
  \xTextMark \markup{ \bold \box "Open Solos" }
  
  r1\fermata | r1\fermata | r1\fermata | r1\fermata \caesura |
  \bar "||"
  \compressMMRests {
    \override MultiMeasureRest.expand-limit = 1 {
      R1*4^"Drums, In Time"
    }
  }

  \bar "||"
}

introKey = c

introChords = \chordmode {
  s2 c2:m11 s4. bf8*5:m11 s4 df4:sus7 s4 ef4:sus7 s4 f4:sus7 s8 g4.:sus7
}

introKicksOverTime = \relative f' {
  r2 c2 | r4 r8 c8~ c2 | r4 c4 r4 c4 | r4 c4 r8 c4. |
}
  

bassIntro = \relative f' {
  \time 4/4
  \key \introKey \minor
  \clef bass
  \tempo "Medium Rock, Straight Eighths [Freddie Hubbard 1970]" 4 = 140

  \xTextMark \markup{ \bold \box "Intro" }

  \bar ".|:"
  \repeat volta 2 {
  c,8 g'8 c8 g8 c4. f,8 | bf,8 f'8 bf4 bf4. af8 |
  df,8 af'8 df4 ef,8 bf'8 ef4 | f,8 c'8 f8 g,8 d'8 g4\bendAfter -4 r8 |
  }
}

refrainChords = \chordmode {
  s4

  c1:m11 bf1:m11 df2:sus7 ef2:sus7 f2:sus7 g2:sus7
  c1:m11 bf1:m11 df2:sus7 ef2:sus7
  
  f2:sus7 g2:sus7
  
  f2:sus7 g2:sus7
  
  c1:m11 bf1:m11 df2:sus7 ef2:sus7
  
  f2:sus7 g2:sus7
  
  f2:sus7 g2:sus7

  c1:m11 bf1:m11 df2:sus7 ef2:sus7 f2:sus7 g2:sus7
  c1:m11 bf1:m11 df2:sus7 ef2:sus7 f2:sus7 g2:sus7

  c1:m11 bf1:m11 df2:sus7 ef2:sus7 f2:sus7 g2:sus7
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef

  \partial 4 \invisEighth c'8~ |

  \xTextMark \markup{ \bold \box "Head" \bold \box "A1,A2" "Bass pattern contiues on head" }

  \bar ".|:"
  \repeat volta 2 {
  c8 bf8 c8 bf8 g8 f8 ef8 f8~ | f4. ef8~ ef2 | r8 df8 ef8 gf8 af4 f8 ef8 | bf'4 g8 f8 c'8 d16 ef16 f4 |
  r2 f8 ef16 c16 bf8 f8 | g8 ef8 c8 f8~ f8 ef4.~ | ef1~ |
  \alternative { \volta 1 {
  ef2 r4 r8 c'8\laissezVibrer |
  } \volta 2 {
  ef,2\repeatTie r2 |
  } } }

  \break
  \xTextMark \markup{ \bold \box "B" }
  
  \bar ".|:-||"
  \repeat volta 2 {
  r2 f2 | r4 r8 ef8~ ef4 r4 | r4 gf4 r4 af4 |
  \alternative { \volta 1 {
  r4 bf4 r8 c8 r4 |
  } \volta 2 {
  r4 bf4 r8 c8 r8 c8~ |
  } } }
  
  \sect "A3"
  
  c8 bf8 c8 bf8 g8 f8 ef8 f8~ | f4. ef8~ ef2 | r8 df8 ef8 gf8 af4 f8 ef8 | bf'4 g8 f8 c'8 d16 ef16 f4 |
  r2 f8 ef16 c16 bf8 f8 | g8 ef8 c8 f8~ f8 ef4.~ |
  ef1~_"First Time, to Solos. Last Time, to Outro" | ef2 r2 |

  \break

  \xTextMark \markup{ \bold \box "Solos" "Two-feel bass" }
  
  \bar ".|:-||"
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq r8_"After Solos, to Head" c'8\laissezVibrer |
  }
}

outroKey = c

outroChords = \chordmode {
  s2 c2:m11 s4. bf8*5:m11 s4 df4:sus7 s4 ef4:sus7 s4 f4:sus7 s8 g4.:sus7

  c1:m11
}

outroKicksOverTime = \relative f' {
  r2 c2 | r4 r8 c8~ c2 | r4 c4 r4 c4 | r4 c4 r8 c4. | c1\fermata |
}
  

bassOutro = \relative f' {
  \time 4/4
  \key \outroKey \minor
  \clef bass

  \xTextMark \markup{ \bold \box "Outro" }

  \bar ".|:"
  \repeat volta 2 {
  c,8 g'8 c8 g8 c4. f,8 | bf,8 f'8 bf4 bf4. af8 |
  df,8 af'8 df4 ef,8 bf'8 ef4 | f,8 c'8 f8 g,8_"3x, ritard last time" d'8 g4\bendAfter -4 r8 |
  }
  c,,1\fermata |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/bridge.ily"

\include "../Include/bass-intro-with-kicks.ily"

\include "../Include/refrain.ily"

\include "../Include/bass-outro-with-kicks.ily"

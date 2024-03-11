%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Song for My Father"
  subtitle = \instrument
  poet = ""
  composer = "Horace Silver"
  copyright = "© 1964 Ecaroh Music, Inc."
}

bossaRhythm = ##t

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s8
  
  s1 s1 s1 s1
  
  f1:m9 f1:m9 ef1:9 ef1:9
  df1:9 c4:7 r2. f1:m9
  
  f1:m9

  f1:m9
  
  ef1:m9 ef1:m9 f1:m9 f1:9
  ef2:9 df2:9 c4:7 r2. f1:m9 f1:m9
  
  % f1:m9 f1:m9
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Bossa" 4 = 126

  \partial 8 r8 |
  \bar "||"

  \mark \markup{ \box "Intro" }
  
  r1 | r1 | r1 | r2 r8 c8-. f8-. af8-. |
  
  \break

  \mark \markup{ \box "A1, A2" }
  
  \bar ".|:-||"
  \repeat volta 2 {
  c8 \tuplet 3/2 { df16 c16 bf16 } af8-. bf8 \tuplet 3/2 { bf16 c16 bf16 } af8 f8-. af8~ |
  af8 \tuplet 3/2 { bf16 af16 f16 } ef8-. f8~ f8 \tuplet 3/2 { g16 f16 ef16 } c8-. <ef df>8~ |
  <ef df>1~ | <ef df>2. g,8 gf8 |
  \break
  f8-. <df' cf>8~ <df cf>2. | r2 <f d>4. <g ef>8~ | <g ef>1~ |
  } \alternative { {
  <g ef>2 r8 c,8-. f8-. af8-. |
  } {
  <g ef>2\repeatTie r8 <ef c>8-. <ef c>8-. <ef c>8-. |
  } }
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  <ef c>8 <df bf>8 r8 <f df>8~ <f df>2~ | <f df>2 r8 <f df>8-. <f df>8-. <f df>8-. |
  <f df>8 <ef c>8 r8 <g ef>8~ <g ef>2~ | <g ef>2 r8 <ef c>8-. <ef c>8-. <ef c>8-. |
  \break
  <ef c>8 <df bf>8 r8 <f df>8~ <f df>2 | r2 <af e>4. <bf g>8~ |
  \textToCodaLastTime <bf g>1~ | <bf g>2 
  {
    \override Parentheses.font-size = #5
    \startParenthesis \parenthesize r8
    c,8-. f8-. 
    \endParenthesis \parenthesize af8-.
  } |
  
  \bar "|."
  \break
  
  \textCoda
  <bf g>1~\repeatTie | <bf g>1 |
  \bar ".|:"
  \repeat volta 2 {
  r1^"Vamp until cue" | r1 |
  }
  r1^"On cue" |
  \bar "|."  
}

refrainBass = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef bass

  \partial 8 f,8 |
  
  f4 r8 c'8 c4 r8 f,8 | f4 r8 c'8 c4 r8 f,8 | f4 r8 c'8 c4 r8 f,8 | f4 r8 c'8 c4 r8 f,8 |
  f4 r8 c'8 c4 r8 f,8 | f4 r8 c'8 c4 r8 ef,8 | ef4 r8 bf'8 bf4 r8 ef,8 | ef4 r8 bf'8 bf8 ef,8 ef8 d8 |
  df4 r8 af'8 af8 df,8 af'8 df,8 | c4 r4 r4 r8 f8 | f4 r8 c'8 c4 r8 f,8 |
  
  f4 r8 c'8 c4 r8 f,8 |
  
  f4 r8 c'8 c4 r8 ef,8 |

  ef4 r8 bf'8 bf4 r8 ef,8 | ef4 r8 bf'8 bf4 r8 ef,8 | f4 r8 c'8 c4 r8 f,8 | f4 r8 c'8 c4 r8 ef,8 |
  ef4 r8 bf'8 bf8 ef,8 af8 df,8 | c4 r4 r4 r8 f8 | f4 r8 c'8 c4 r8 f,8 | f4 r8 c'8 c4 r8 f,8 |

  f4 r8 c'8 c4 r8 f,8 | f4 r8 c'8 c4 r8 f,8 | f4 r8 c'8 c4 r8 f,8 | f4 r8 c'8 c4 r8 f,8 | <f f,>4 r4 r2 |
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-with-bass.ily"

\markup{ "Play head twice before and twice after solos, solo on A1-A2-B" }

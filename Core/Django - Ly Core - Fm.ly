%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Django"
  subtitle = \instrument
  poet = ""
  composer = "John Lewis"
  copyright = \markup \small "© 1954 MJQ Music Inc."
}

straightEighths = ##t

refrainChords = \chordmode {
  f1:m bf1:m7 c1:7.9- f1:m
  f1:7.9- bf1:m7 ef1:7.9- af1:maj7
  df1:maj7 g1:m7.5- g1:7/f c2/e c2:7.9-
  f1:m9.7+ f1:m7/bf c4:7.5+ \chordSlash 2 c4:7 bf2:dim7/f f2:m
  f1:m9.7+ f1:m7/bf c4:7.5+ \chordSlash 2 c4:7 bf2:dim7/f f2:m

  f2:m d2:m7.5- g2:7 c2:7 f2:7.9- bf2:m7 ef2:7 af2:7
  
  df2:7 g2:7 c1:7
  
  df2:7 g2:7 f1:m6
  
  f1:7.9- bf1:m6/f f1:7.9- bf1:m6/f 
  f1:7.9- bf1:m6/f f2:7.9- bf2:dim7/f f1:7.9-
  
  bf2:m g2:m7.5- c2:7 f2:7 bf2:7 ef2:m7 af2:7 df2:7
  gf1:7 gf1:7 df1:7 df1:7
  gf1:7 gf1:7 df1:7 \chordInsideParens{ c1:7 }
  
  f4.:m9.7+ f8:m f4.:m7/bf bf8:m c4.:7.5+ c8:7 bf4:dim7/f f4:m
  f4.:m9.7+ f8:m f4.:m7/bf bf8:m c4.:7.5+ c8:7 bf4:dim7/f f4:m
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Slow 4, Even Eighths [MJQ 1954]" 4 = 75

  \sectStart "A"
  \xTextMark \markup{ \bold "Head" }

  r4 af2 g4 | <f df>4. <e c>8 <f df>4 <df bf>4 | r4 bf'2 df4 | <af f>4. <g e>8 <af f>4 <f c>4 |
  \break
  r4 c'2 ef4 | <df bf>4. <c a>8 <df bf>4 <bf f>4 | r4 bf2 df4 | <c af>4. <b g>8 <c af>4 <af f>4 |
  \break
  r4 af2 c4 | bf4. a8 bf4 g4 | b4. as8 b4 g4 | c4. b8 c4 g'4 |
  \break
  r4 <g e>2 f4 | r4 <ef c>2 <df bf>4 | r4 <c af>2 <bf g>4 | <bf g>2 <af f>2 |
  \break
  r4 <g e>2 f4 | r4 <ef c>2 <df bf>4 | r4 <c af>2_"rit." <bf g>4 | <bf g>2 <af f>2_"Fine" |
  
  \sectNoBar "B1,B2"
  \xTextMark \markup{ \bold "Solos" }
  
  \tempo "Medium Swing [MJQ 1954]" 4 = 112
  
  \bar ".|:-||"
  \repeat volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \alternative { \volta 1 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  } \volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  } } }

  \sect "C"

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 

  \break

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 

  \break

  \sect "D"

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 

  \break

  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq \daCapoAlFineAfterSolos | 
  
  \bar "|."
  \xPageBreak

  \sectNoBar "E"
  \xTextMark \markup{ \bold "Interlude between solos" }

  r8 <g'' e>4 f8 r8 <ef c>4 <df bf>8 | r8 <c af>4 <bf g>8 <bf g>4 <af f>4 |
  \break
  r8 <g e>4 f8 r8 <ef c>4 <df bf>8 | r8 <c af>4 <bf g>8 <bf g>4 <af f>4 |
  
  \bar "|."
}

bassLineKey = f

bassLineChords  = \chordmode {
  f2:m d2:m7.5- g2:7 c2:7 f2:7.9- bf2:m7 ef2:7 af2:7
  
  df2:7 g2:7 c1:7
  
  df2:7 g2:7 f1:m6
  
  f1:7.9- bf1:m6/f f1:7.9- bf1:m6/f 
  f1:7.9- bf1:m6/f f2:7.9- bf2:dim7/f f1:7.9-
  
  bf2:m g2:m7.5- c2:7 f2:7 bf2:7 ef2:m7 af2:7 df2:7
  gf1:7 gf1:7 df1:7 df1:7
  gf1:7 gf1:7 df1:7 \chordInsideParens{ c1:7 }
}

bassLineMelody = \relative f {
  \time 4/4
  \key \bassLineKey \minor
  \clef bass
  

  \sectStart "B1,B2"
  \xTextMark \markup{ \bold "Bass line for solos" }
  
  \bar ".|:-||"
  \repeat volta 2 {
  \rsq_"Bass walks" \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \alternative { \volta 1 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  } \volta 2 {
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  } } }

  \sect "C"

  f4_"Bass pedal" f4 f4 f4 | f4 f4 f4 f4 | f4 f4 f4 f4 | f4 f4 f4 f4 | 
  \break
  f4 f4 f4 f4 | f4 f4 f4 f4 | f4 f4 f4 f4 | f4 f4 f4 f4 | 

  \sect "D"

  \rsq_"Bass walks" \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 

  \break

  gf8_"Boogie-woogie bass" df'8 ef8 df8 ff4 ef4 | gf,8 df'8 ef8 df8 ff4 ef4 |
  df,8 af'8 bf8 af8 cf4 bf4 | df,8 af'8 bf8 af8 cf4 bf4 |
  \break
  gf8 df'8 ef8 df8 ff4 ef4 | gf,8 df'8 ef8 df8 ff4 ef4 | df,8 af'8 bf8 af8 cf4 bf4 | df,8 af'8 bf8 af8 cf4 bf4 |

  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  % Leave a gap
  \vspace #1
}

\include "../Include/bass-line.ily"

\markup { "16 bar head " \bold \box "A" " played slow, even eights, ritard at end." }

\markup { "Solos medium swing, on " \bold \box "B1" \bold \box "B2" \bold \box "C" \bold \box "D" }

\markup { "Play Interlude " \bold \box "E" " between (not before or after) solos, at the same medium swing tempo." }

\markup "After last solo, return to head at slow tempo."

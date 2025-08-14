%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
  title = "A Night in Tunisia"
  subtitle = \instrument
  poet = ""
  composer = "Dizzy Gillespie and Frank Paparelli"
  copyright = \markup \small "© 1944 MCA Music Publishing Inc."
}

refrainChords = \chordmode {
  ef1:7 d1:m

  s8

  ef1:7 d1:m ef1:7 d1:m
  ef1:7 d1:m e2:m7.5- a2:7.5-
  
  d1:m
  
  d1:m
  
  a1:m7.5- d1:7.9- g2:m6 d2:7.9- g1:m6
  g1:m7.5- c1:7.9- f1:6 e2:m7.5- a2:7.5-
  
  d1:m
  
  e1:m7.5- e1:m7.5- ef1:7.11+ ef1:7.11+
  d1:m d1:m g1:7.11+ g1:7.11+
  g1:m7+ g1:m7 gf1:7.9+ gf1:7.9+
  
  f1:maj7 f1:maj7 e1:m7.5- a1:7.9-
}

refrainKey = d

"|" = {}

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \tempo "Medium-Up Latin [Dizzy Gillespie 1946]" 4 = 180
  \clef bass

  \xTextMark \markup{ \bold \box "Intro" " (bass)" }
  \bar ".|:"
  \repeat volta 2 {
  ef,8 bf'8 df8 ef8~ ef8 df4 bf8 | d,8 f8 a8 b8~ b8 a4 f8 |
  }

  \set Staff.explicitClefVisibility = #end-of-line-invisible
  \break

  \clef \whatClef
  \partial 8 a8 |
  
  \xTextMark \markup{ \bold \box "A1, A2, A3" \musicglyph #"scripts.segno" }
  \bar ".|:"
  \repeat volta 2 {
  \tuplet 3/2 { bf8 df8 f8 } c'2 bf8 f8 | gs8 a4.~ a4. a,8 |
  \tuplet 3/2 { bf8 df8 f8 } c'8 c4. bf8 f8 | a2 r4 r8 a,8 |
  \break
  \tuplet 3/2 { bf8 df8 f8 } c'2 bf8 f8 | gs8 a4.~ a2 |
  a8 bf8 a8 g8 ef4 cs8 d8~ \textToCoda |
  } \alternative { {
  d2 r4 r8 a8 |
  } {
  d2.\repeatTie  a'4 |
  } }  
  
  \sect "B"
  
  c4. a8~ a4. g8 | fs4 ef'8 df8 d8 c4 a8 | bf8 g4 fs8~ fs4 a8 f8 | g8 a8 e4 r4 r8 bf'8~ |
  \break
  bf2 g4. f8 | e4 df'8 b8 c8 bf4 gs8 | a4. f8 g4 f8 e8~ | e2 r4 r8 \dalSegno a,8 |
  \bar "||-||"
  
  \textCodaBreak
  
  d4.\repeatTie_"Fine" a'8 r8 a4 a8~ |
  \bar "||-||"
  

  \xTextMark \markup{ \bold \box "C" }
  
  a4 g8 e8 a4 g8 e8 | a8 g8 e8 a8 r4 r8 a8~ | a4 g8 ef8 a4 g8 ef8 | a8 g8 ef8 a8 r4 r8 a8~ |
  \break
  a4 f8 d8 a'4 f8 d8 | a'8 f8 d8 a'8 r4 r8 a8~ | a4 g8 ef8 a4 g8 ef8 | a8 f8 df8 a'8 r4 r8 a8~ |
  \break
  a4 fs8 d8 a'4 fs8 d8 | a'8 f8 d8 a'8 r4 r8 a8~ | a4 ff8 df8 a'4 ff8 df8 | a'8 ff8 df8 a'8 r4 a8 c8 |
  \break
  \rsq^"solo break" \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup { "Solo " \bold \box "A1" \bold \box "A2" \bold \box "B" \bold \box "A3" ". After solos, D.S. al Fine (take repeat)." }

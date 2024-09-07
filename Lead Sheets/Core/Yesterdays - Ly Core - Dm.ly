%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 16) #}
)

\header {
  title = "Yesterdays"
  subtitle = \instrument
  poet = "Otto Harbach"
  composer = "Jerome Kern"
  copyright = "© 1933 T.B. Harms Co."
}

refrainLyrics = \lyricmode {
Yes -- ter -- days,
Yes -- ter -- days,
Days I knew as hap -- py sweet
Se -- ques -- ter'd days.
Old -- en days,
Gold -- en days,
Days of mad ro -- mance and love,

Then gay youth was mine,
Truth was mine,
Joy -- ous, free and flam -- ing life
for -- sooth was mine.
Sad am I,
Glad am I,
For to -- day I'm dream -- ing of
yes -- ter -- days.
}

refrainChords = \chordmode {
  d1:m e2:m7.5- a2:7.9- d1:m e2:m7.5- a2:7.9- 
  d2:m d2:m/cs d1:m/c b1:m7.5- e1:7
  
  a1:7.5+ d1:7 g1:7 c1:7
  c2:m7 f2:7 bf2:maj7 ef2:maj7 e1:m7.5- a1:7.5+

  d1:m e2:m7.5- a2:7.9- d1:m e2:m7.5- a2:7.9- 
  d2:m d2:m/cs d1:m/c b1:m7.5- e1:7
  
  a1:7.5+ d1:7 g1:7 c1:7
  c2:m7 f2:7 bf2:maj7 ef2:maj7 e1:m7.5- a1:7.5+

  d1:m
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Ballad" 4 = 100

  \xTextMark \markup{ \bold \box "A1" }
  
  a2. f4 | g1 | a2. f4 | g1 |
  \break
  d4 e4 f4 g4 | gs4 a4 b4 c4 | f2. b,4 | e1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B1" }
  
  f2. a,4 | e'1 | e2. g,4 | d'1 |
  \break
  d2. a4 | c4 bf4 f4 g4 | a1 | a2 a2 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  a2. f4 | g1 | a2. f4 | g1 |
  \break
  d4 e4 f4 g4 | gs4 a4 b4 c4 | f2. b,4 | e1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B2" }

  f2. a,4 | e'1 | e2. g,4 | d'1 |
  \break
  d2. a4 | c4 bf4 f4 g4 | a1 | a2  \textToCodaLastTime a2 |
  
  \bar "|."
  
  \textCoda
  a1\fermata |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

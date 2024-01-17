%% -*- Mode: LilyPond -*-

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\include "../Include/lead-sheets.ily"

\header {
  title = "Kansas City Kitty"
  subtitle = \instrument
  poet = "Edgar Leslie"
  composer = "Walter Donaldson"
  copyright = "© 1929 Donaldson, Douglas & Gumble, Inc."
}

refrainLyricsOne = \lyricmode {
  I left Fris -- co Kate, __ Swing -- in' on the Gold -- en Gate, __
  When Kan -- sas Cit -- y Kit -- ty smiled at me! __
  
  I left Ma and Pa, __ out in O -- ma -- ha -- ha -- ha, __
  When Kan -- sas Cit -- y Kit -- ty smiled at me! __

  She comes from Miss -- ou -- ri and she showed me.
  Like a Tex -- as steer she buf -- fa -- loed me.
  
  Ev' -- ry Jim and Jack, __ Got the well known Hack -- en -- sack, __
  When Kan -- sas Cit -- y Kit -- ty smiled at me! __
}

refrainLyricsTwo = \lyricmode {
  I just laid a chill __ on the fa -- mous Dia -- mond Lil, __
  When Kan -- sas Cit -- y Kit -- ty smiled at me. __
  
  Folks in New Ro -- chelle said “He ain't done right by Nell”.
  When Kan -- sas Cit -- y Kit -- ty smiled at me. __

  I gave Geor -- gia Brown __ my watch chain Sun -- day,
  I gave Louis -- ville Lou the works on Mon -- day.
  
  I_pass up all those queens like I pass up Bos -- ton beans,
  When Kan -- sas Cit -- y Kit -- ty smiled at me. __
}

refrainFHChords = \chordmode {
  g1 c1:7 g1 c1:7
  g1 a2:7 d2:7 g a2:7 d2:7
  g1 c1:7 g1 c1:7
  g1:7 a2:7 d2:7 g1 g2 fs2:7
  
  b1:7 b1:7 e1:7 e1:7 
  a1:7 a1:7 d1:7 d1:7
  
  g1 c1:7 g1 c1:7
  g1 a2:7 d2:7 g a2:7 d2:7
}

refrainiRealChords = \chordmode {
  g1:6 c1:7 g1:6 e1:7
  a1:7 d1:7 g1:6 a2:m7 d2:7
  
  g1:6 c1:7 g1:6 e1:7
  a1:7 d1:7 g1:6 g1:6
  
  b1:7 b1:7 e1:7 e1:7 
  a1:7 a1:7 d1:7 d1:7
  
  g1:6 c1:7 g1:6 e1:7
  a1:7 d1:7 g1:6 g1:6
}

refrainChords = \refrainiRealChords

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 160

  \mark \markup{ \box "A1" }
  
  d4 e4 g8 b4 bf8~ | bf2~ bf8 e4 ef8 | d4 b4 g8 d4 e8~ | e2. ef4 |
  d4 e4 g8 b4. | as8 b4 d,8~ d4 e4 | g1~ | g2. r4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  d4 e4 g8 b4 bf8~ | bf2~ bf8 e4 ef8 | d4 b4 g8 d4 e8~ | e2. ef4 |
  d4 e4 g8 b4. | as8 b4 d,8~ d4 e4 | g1~ | g2. r4 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  b4 b4 c4 c4 | b4 b4 c4 c4 | b1 | e1 |
  a,4 a4 b4 b4 | a4 a4 b4 b4 | a1 | d1 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  d,4 e4 g8 b4 bf8~ | bf2~ bf8 e4 ef8 | d4 b4 g8 d4 e8~ | e2. ef4 |
  d4 e4 g8 b4. | as8 b4 d,8~ d4 e4 | g1~ | g2. r4 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"

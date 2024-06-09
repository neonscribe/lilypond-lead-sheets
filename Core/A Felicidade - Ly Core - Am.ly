%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "A Felicidade"
  subtitle = \instrument
  poet = "Vinicius de Moraes"
  composer = "Antônio Carlos Jobim"
  copyright = "© 1960 Editora Musical Arapuã Ltda"
}

bossaRhythm = ##t

refrainLyricsOne = \lyricmode {
Tris -- te -- za não tem fim __
Fe -- li -- ci -- da -- de sim. __
Tris -- te

A fe -- li -- ci -- da -- de~_é co -- mo~_a plu -- ma
Que~_o ven -- to vai le -- van -- do pe -- lo ar.
Vo -- a tão le -- ve
Mas tem a vida bre _ -- ve
Pre -- ci -- sa que~_ha -- ja ven -- to sem pa -- rar. __
A fe -- li -- ci -- da -- de ~_~_ es -- tá so -- nhan -- do __
Nos o -- lhos da mi -- nha na -- mo -- ra -- da. __
É co -- mo~_es -- ta noi -- te
Pas -- san -- do, pas -- san -- do,
Em bus -- ca da ma -- dru -- ga -- da
Fa -- lem bai -- xo, por fa -- vor _
Pra que~_e -- la~_a -- cor -- de~_a -- le -- gre com -- o~_o di -- a
O -- fe -- re -- cen -- do bei -- jos de a -- mor __
}

refrainLyricsTwo = \lyricmode {
\skip 1 \skip 2.
A fe -- li -- ci -- da -- de~_é co -- mo~_a go -- ta
De~_or -- va -- lho nu -- ma pé -- ta -- la de flor.
Bri -- lha tran -- qui -- la
De -- pois de le -- ve~_os -- ci -- la
E cai com -- u -- ma lá -- gri -- ma de~_a -- mor. __
A fe -- li -- ci -- da -- de do po -- bre pa -- re -- ce __
A gran -- de~_i -- lu -- são do car -- na -- val __ _
A gen -- te tra -- ba -- lha o a -- no in -- tei -- ro
Por um mo -- men -- to de so -- nho
Pra fa -- zer a fan -- ta -- si -- a
De rei ou de pi -- ra -- ta~_ou jar -- di -- nei -- ra
Pra tu -- do se~_a -- ca -- bar na quar -- ta fei -- ra. __
}

refrainChords = \chordmode {
  s4.
  
  a1:m7 a1:m7 a1:m7 a1:m7
  e1:m7 b1:7.9- e2:m7 a2:7 d2:m7 g2:7

  d2:m7 g2:7
  
  c1:maj7 c1:maj7 b1:m7.5- e1:7.9-
  a1:m7 af1:7 g1:m7 c1:9
  f1:maj7 bf1:9.11+ a1:m7 d1:7
  a1:m7 b2:m7 e2:7.5+.9- a1:m7 g2:sus7 g2:7

  c1:maj7 f1:7 c1:maj7 c1:maj7
  g1:m7 c1:7 f1:maj7 f1:maj7
  d1:m7 g1:7 c1:6.9 c1:6.9
  fs1:m7.5- b1:7.9- e2:m7 a2:7 d2:m7 g2:7.9-

  a1:m7 a1:m7/g d1:7/fs d1:m7/f
  a1:m7 b2:m7.5- e2:7.5+.9- a1:m7 a1:m7
}

refrainKey = a

refrainMelody = \relative c' {
  \time 2/2
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Samba" 4 = 120

  \partial 4.
  
  e4 a8~ |

  \textMark \markup{ \bold \box "A" }
  
  \bar ".|:"
  \repeat volta 2 {
    a1 | r8 c4 b4 g4 e8~ | e1 | r2 r8 e4 g8~ |
    g2. e4 | fs2~ fs8 ds4 e8~ | e1 |
  }
  \alternative {
    { r2 r8 e4 a8 | }
    { r1 |  }
  }
  
  \bar "||"
  \textMark \markup{ \bold \box "B" }
  
  e1 | r8 g4 f4 e4 e8~ | e8 d4 cs4 d4 f8~ | f4. f8 r8 e4 d8~ |
  d8 c4 b4 c4 e8~ | e8 d4 c4 b4 bf8~ | bf1 | r1 |

  \bar "||"
  r8 a4 c4 d4 e8~ | e4. e4 c4 a8~ | a8 c4 d8~ d8 e4 d8~ | d4. d8 r8 e4 a8~ |
  a8 gs4 g4 c,4 e8~ | e8 ef4 d4 c4 a8~ | a1 | r1 |
  
  \bar "||"
  \textMark \markup{ \bold \box "C" }
  
  r8 g4 a8 b8 c4 a8~ | \tuplet 3/2 { a4 b4 c4 } \tuplet 3/2 { d4 b4 a4 } | b4. b8~ b2 | r2 r4 r8 c8~ |
  c8 d4 e4 f4 d8~ | d8 e4 c4 e4 d8~ | d4. d8~ d2 | r2 r8 g4 g8~ |
  g4. d4 g4 g8~ | g4. g4 a4 a8~ | a4. e4 a4 a8~ | a4. a4. b4 |
  b4 a4 \tuplet 3/2 { g4 fs4 g4 } | a4. a8 r8 g4 fs8 | g8 g4 f4 e4 f8~ | f4. f4 e4 c8~ |
  
  \textMark \markup{ \bold \box "D" }

  c8 d4 e4 a4 e8~ | e8 d4 c4 a4 d8~ | d2 d2 | r2 r8 e4 a8~ |
  a8 gs4 g4 c,4 e8~ | e8 ds4 d4 c4 a8~ | a2 a2~ | a2 r2 |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"

$(if #(not (string-contains instrument "Standard"))
     #{ \pageBreak #} )

performanceNotes =
\markup {
  \column {
    \line { \huge { Intro: drums four bars, band four bar vamp on im7 } }
    \line { \huge { First chorus: vocal } }
    \line { \huge { Second chorus: accordion solo A (x2) guitar solo B vocal C } }
    \line { \huge { Ending: repeat last four (x2), tag with first four bars of A. } }
  }
}

\include "../Include/notes.ily"

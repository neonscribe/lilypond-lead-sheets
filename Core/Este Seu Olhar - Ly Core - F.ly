%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Este Seu Olhar"
  subtitle = \instrument
  composer = "Antônio Carlos Jobim"
  copyright = \markup \small "© 1959 Editora Musical Arapuã"
}

bossaRhythm = ##t

unsyncedrefrainLyrics = \lyricmode {
}

refrainLyricsOne = \lyricmode {
Es -- te seu ol -- har __
Quan -- do_en contra o meu __
Fa -- la de_u -- mas coi -- sas
Que_eu não pos -- so_a -- cre -- di -- tar.

Do -- ce_é so -- nhar __
É pen -- sar que vo -- cê
Gos -- ta de mim __
Co -- mo eu __ de vo -- cê

Ah! Se_eu pu -- des -- se_en -- ten -- der
O que di -- zem __ os teus o -- lhos __
}

refrainLyricsTwo = \lyricmode {
Mas a i -- lu -- são __
Quan -- do se des -- faz __
Dói no co -- ra -- ção __ de quem so -- nhou,
So -- nhou de -- mais.
}

refrainChords = \chordmode {
  f1:maj7 fs1:dim7 g1:m7 gs1:dim7
  a1:m7 a1:7.13- bf1:maj7 bf1:m6
  
  f1:maj7/a af1:dim7 g1:m7 c1:7/bf
  f1:maj7/a d1:9 g1:m7 c1:7.13-
  
  a1:m7 af1:dim7 c1:m7/g fs1:dim7
  g2:13 g2:7.13- g2:m7 c2:7.9- f1:maj7

  \chordInsideParens{ c1:7.13- }
}

bossaRhythm = ##t

refrainKey = f

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Bossa Nova" 2 = 70

  \bar ".|:"
  \repeat volta 2 {
    
    a4 bf8 c8~ c8 d4 c8~ | c1 | bf4 c8 d8~ d8 e4 d8~ | d1 |
    \break
    c4 d8 e8~ e8 f4 e8~ | e8 f4 g8~ g8 a4 g8~ | g2 \tuplet 3/2 { f4 g4 a4 } | g1 |
    \break
    
    }
  \alternative { {
    g2~ g8 f4 e8 | f2~ f8 e4 d8 | f2~ f8 e4 d8 | e1 |
    \break
    e2~ e8 d4 c8 | d2~ d8 gs,4 a8 | d2~ d8 c4 d8 | c1 |
    \break
  } {
    g'2~ g8 f4 e8 | f2~ f8 e4 d8 | c1 | r2 r8 cs4 d8 |
    \break
    g4. g8~ g2~ | g4. g8~ g8 a4 g8~ | g4 f4~ f2 | r1 |
  } }

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"


chordDiagrams = \chordmode {
  f1:maj7 fs:dim7 g:m7 gs:dim7
  a:m7 a:7.13- bf:maj7 bf:m6

  f:maj7/a af:dim7 c:7/bf
  d:9 c:7.13-

  c:m7/g
  g:13 g:7.13- c:7.9-
}

\markup {
  % Leave a gap after the refrain
  \vspace #2
}

\include "../Include/chord-diagrams.ily"

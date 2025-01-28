%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
  title = "Ain't Misbehavin'"
  subtitle = \instrument
  poet = "Andy Razaf"
  composer = "Fats Waller and Harry Brooks"
  copyright = "© 1929 Mills Music, Inc."
}

refrainLyrics = \lyricmode {
  No one to talk with, all by my -- self,
  No one to walk with but I'm hap -- py on the shelf,
  Ain't mis -- be -- hav -- in', I'm sav -- in' my love for you.
  
  I know for cer -- tain the one I love,
  I'm through with flirt -- in', it's just you I'm think -- in' of,
  Ain't mis -- be -- hav -- in', I'm sav -- in' my love for you.

  Like Jack Hor -- ner in the cor -- ner, don't go no -- where, what do I care?
  Your kiss -- es are worth wait -- in' for, be -- lieve me.
  
  I don't stay out late, don't care to go,
  I'm home a -- bout eight, just me and my ra -- di -- o.
  Ain't mis -- be -- hav -- in', I'm sav -- in' my love for you.
}

refrainNewRealChords = \chordmode {
  c2:6 a2:7 d2:m7 g2:7 c2:6 e2:7.5+ f2:6 f2:m6
  c2:6/e a2:7 d2:m7 g2:7 e2:7 a2:7 d2:9 g2:7

  c2:6 a2:7 d2:m7 g2:7 c2:6 e2:7.5+ f2:6 f2:m6
  c2:6/e a2:7 d2:m7 g2:7
  c2:6 f4:6 f4:m6 c2:6 e2:7
  
  a1:m7 f1:7 d1:7 a1:7
  g2:6 \chordInsideParens{ e2:7 } a2:m7 d2:7 g2:7 a2:7 d2:9 g2:7

  c2:6 a2:7 d2:m7 g2:7 c2:6 e2:7.5+ f2:6 f2:m6
  c2:6/e a2:7 d2:m7 g2:7 c2:6
  \chordOpenParen{ a2:m7 }
  d2:m7
  \chordCloseParen{ g2:7 }
}

refrainDFBChords = \chordmode {
  c2 cs2:dim7 d2:m7 g2:7 c2 c2:7 f2 f2:m
  c2/e a2:7 d2:m7 g2:7 e2:7 a2:7 d2:7 g2:7

  c2 cs2:dim7 d2:m7 g2:7 c2 c2:7 f2 f2:m
  c2 a2:7 d2:m7 g2:7 c2 f2 c2 e2:7
  
  a1:m f1:7 d1:7 a1:7
  g2 gs2:dim7 a2:m7 d2:7 g2:7 a2:7 d2:7 g2:7

  c2 cs2:dim7 d2:m7 g2:7 c2 c2:7 f2 f2:m
  c2/e a2:7 d2:m7 g2:7 c2 ef2:dim7 d2:m7 g2:7
}

refrainHLChords = \chordmode {
  c2 cs2:dim7 d2:m7 ds2:dim7 c2/e e2:7.5+ f2:6 bf2:9
  c2 a2:7.9- d2:m7 g2:7 e2:7 a2:7 d2:7 g2:7

  c2 cs2:dim7 d2:m7 ds2:dim7 c2/e e2:7.5+ f2:6 bf2:9
  c2 a2:7.9- d2:m7 g2:7 c2:6 bf2:9 c2:6 e2:7.5+

  a1:m f1:7/a d1:7/a a1:7
  g2 gs2:dim7 a2:m7 d2:7 g2:7 a2:7 d2:7 g2:7

  c2 cs2:dim7 d2:m7 ds2:dim7 c2/e e2:7.5+ f2:6 bf2:9
  c2 a2:7.9- d2:m7 g2:7 c1:6
  \chordOpenParen{ d2:m7 }
  \chordCloseParen{ g2:7 }
}

refrainChords = 
   $(if (and (defined? 'useDFBChords) useDFBChords)
     refrainDFBChords
     refrainHLChords)

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Up Swing [Django Reinhardt 1937]" 4 = 180

  \xTextMark \markup{ \bold \box "A1" }
  
  r8 c8 d8 c8 g'8 g4. | r8 d8 e8 d8 a'2 | r8 g8 a8 g8 c8 c4 b8 | d8 c8 a8 e8~ e8 ef8 d4 |
  r8 c8 d8 c8 g'8 g4. | r8 d8 e8 d8 a'8 a4 g8 | c,1 | r1 |
  
  \sect "A2"
  
  r8 c8 d8 c8 g'8 g4. | r8 d8 e8 d8 a'2 | r8 g8 a8 g8 c8 c4 b8 | d8 c8 a8 e8~ e8 ef8 d4 |
  \break
  r8 c8 d8 c8 g'8 g4. | r8 d8 e8 d8 a'8 a4 g8 | c,1 | r1 |
  
  \sect "B"
  r4 c'8 a8 c8 a4. | r4 c8 a8 c8 a4. | r4 c8 a8 c8 a4. | r4 cs8 a8 cs8 a4. |
  \break
  r4 d4 d4 d4 | d4 c4 b4 a4 | g2 a2 | e2 d2 |
  
  \sect "A3"

  r8 c8 d8 c8 g'8 g4. | r8 d8 e8 d8 a'2 | r8 g8 a8 g8 c8 c4 b8 | d8 c8 a8 e8~ e8 ef8 d4 |
  \break
  r8 c8 d8 c8 g'8 g4. | r8 d8 e8 d8 a'8 a4 g8 | c1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

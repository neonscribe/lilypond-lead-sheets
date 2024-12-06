%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = \Title
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = "© 1938 Chappell & Co. Inc."
}

refrainLyrics =
   $(if (and (defined? 'useBillEvansChords) useBillEvansChords)
     #{ \lyricmode { } #}
     #{ \lyricmode {
Spring is here, why does -- n't my heart go danc -- ing?
Spring is here, whi is -- n't the waltz en -- tranc -- ing?
No de -- sire, __ _ no am -- bi -- tion leads me,
May -- be it's be -- cause no -- bod -- y needs me.
Spring is here, why does -- n't the breeze de -- light me?
Stars ap -- pear, why does -- n't the night in -- vite me?
May -- be it's be -- cause no -- bod -- y loves me,
Spring is here, I hear.
} #} )

refrainHLChords = \chordmode {
  af4:dim \chordSlash 2 af4 af1:6 af1:dim af1:6
  af1:7.9- ef1:9 af1:7.9- ef1:9
  af1 af1 df4:1.3.5.9 \chordSlash 2 df4 af4:sus \chordSlash 2af4
  f1:m f1:m bf1:7 ef1:7

  af4:dim \chordSlash 2 af4 af1:6 af1:dim af1:6
  af1:7.9- ef1:9 af1:7.9- ef1:9
  af1 c4:7 \chordSlash 2f4:m7 bf4:7 \chordSlash 2 bf4:6 ef:sus7 \chordSlash 2 ef4:7 c2:m f2:m
  bf2:m7 ef2:7 af1 
  \chordOpenParen{ ef4:7.5+.9- }
  \chordSlash 2
  \chordCloseParen{ ef4:7 }
}

refrainBillEvansChords = \chordmode {
  e1:7.9+ af1:maj13/ef d2:m9.5- df2:13.11+ af1:maj9.13
  ef2:m9 af2:13 df2:m9 gf2:13 c2:m7.5- f2:7.9- bf2:m9 ef2:7.9-.13
  af4:maj7 ef4:m11 af4/df c4:m11 f4:m9.11 bf4:m11 ef4:m9 af4:13.9- df1:9 g2:13.9- c2:7.9+.9-.5+
  f4:m f4:m6 d2:m9.5-/g af2:maj7.5+ ef2:m6.9/bf g2:m9 e2:13 ef1:13
  
  e1:7.9+ af2:maj13/ef af2:maj7 d2:m7.5- df2:13 af1:maj9.13
  ef2:m9 af2:13 df2:m9 gf2:13 c2:m7.5- f2:7.9+ bf2:m7.5- ef2:7.9-.13
  af4:maj7 bf4:m7 af4/c df4:maj9 c4:m7 bf4:m7 af4:maj9 gf4:maj7 e2:sus13 e2:13 ef4:13.9- \chordSlash 1 df4:m9 gf4:13
  c2:m7 f2:m6.9 bf2:13 ef2:13.9- af1:maj7/ef
  \chordOpenParen{ bf2:m7/ef }
  \chordCloseParen{ ef2:7 }
}

refrainChords = 
   $(if (and (defined? 'useBillEvansChords) useBillEvansChords)
     refrainBillEvansChords
     refrainHLChords)

refrainKey = af

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo \TempoName 4 = \TempoBPM

  \xTextMark \markup{ \bold \box "A1" }
  
  g2. af4 | f1 | g4 \tuplet 3/2 { g8 g8 g8 } g4 af4 | f4 f2. |
  \break
  ef2. f4 | df1 | ef4 \tuplet 3/2 { ef8 ef8 ef8 } ef4 f4 | df4 df2. |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  c4 df4 ef4 f4 | g4 af4 bf4 c4 | f,1 | af1 |
  \break
  c,4 d4 e4 f4 | g4 af4 bf4 c4 | d1 | ef1 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  g,2. af4 | f1 | g4 \tuplet 3/2 { g8 g8 g8 } g4 af4 | f4 f2. |
  \break
  ef2. f4 | df1 | ef4 \tuplet 3/2 { ef8 ef8 ef8 } ef4 f4 | df4 df2. |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }

  c4 df4 ef4 f4 | g4 af4 bf4 c4 | d1 | ef1 |
  \break
  ef2. af,4 | c2. bf4 | af1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

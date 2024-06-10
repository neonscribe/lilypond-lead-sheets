%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "For Sephora"
  subtitle = \instrument
  poet = ""
  composer = "Stochelo Rosenberg"
  copyright = "© 1991 The Rosenberg Trio"
}

bossaRhythm = ##t

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  e1:m e1:m7+ e1:m7 a1:7 a1:7
  
  e1:m e1:m a1:m a1:m b1:7 b1:7 e1:m b1:7

  e1:m e1:m a1:m a1:m b1:7 b1:7 e1:m b1:7

  a1:m d1:7 g1 c1:maj7 a1:m b1:7 e1:m e1:7
  a1:m d1:7 g1 c1:maj7 a1:m fs2:7.5- b2:7 e1:m e1:m
}

refrainKey = e

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Latin" 4 = 180

  \xTextMark \markup{ \bold \box "Intro" }
  
  \bar ".|:"
  \repeat volta 2 {
    e4 e4~ e8 e8 r8 ds8~ | ds8 ds8 r8 ds8~ ds4 ds4 | d4 d4~ d8 d8 r8 cs8~
  } \alternative {
    { cs8 cs8 r8 cs8~ cs4 cs4 | }
    { r2 r8 bf'8 b8 g'8 | } % \xNote cs8 r8 r4 r8
  }
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A1" }
  
  \bar ".|:"
  \repeat volta 2 {
  
  fs2~ fs8 e8 b8 g8 | fs2 fs8 e8 ds8 e8 | b'2~ b8 a16 b16 a8 g8 | a4. gs8 a8 b8 c8 fs8 |
  \break
  ds2 r8 b8 c'8 b8 | c4. a8 fs8 a8 c8 d8 | b2~ b8 b16 c16 b8 a8 | fs8 ds8 b8 bf8 a8 b8 e8 g8 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  fs2~ fs8 e8 b8 g8 | fs2 fs8 e8 ds8 e8 | b'2~ b8 a16 b16 a8 g8 | a4. gs8 a8 c8 g'8 fs8 |
  \break
  ds2 r8 b8 c'8 b8 | c2 fs,8 a8 c8 d8 | b2~ b8 b16 c16 b8 a8 | gs4. b8 c8 b8 gs8 e8 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B1" }
  
  c8 d16 c16 b8 c8~ c2~ | c4. a'8 b8 a8 fs8 d8 | b8 c16 b16 as8 b8~ b2~ | b4. g'8 a8 g8 fs8 e8 |
  \break
  <ds fs>8 <e g>8 <e g>8 <e g>8 <e g>8 <ds fs>8 <cs e>8 <ds fs>8~ | 
  <ds fs>8 r8 r8 <ds fs>16 <ds fs>16 \tuplet 3/2 { <ds fs>4 <e g>4 <fs a>4 } |
  <g b>2 r8 b16 c16 b8 a8 | gs4. b8 c8 b8 g8 e8 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B2" }

  c8 d16 c16 b8 c8~ c2~ | c4. a'8 b8 a8 fs8 d8 | b8 c16 b16 as8 b8~ b2~ | b4. g'8 a8 g8 fs8 e8 |
  \break
  <ds fs>8 <e g>8 <e g>8 <e g>8 <e g>8 <ds fs>8 <cs e>8 <ds fs>8~ | 
  <ds fs>8 <ds fs>4 <ds fs>8 e4 ds4 | e1~ | e2 r2 |
  
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

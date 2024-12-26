%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Dindi"
  subtitle = \instrument
  poet = "Aloysio de Oliveira/Ray Gilbert"
  composer = "Antônio Carlos Jobim"
  copyright = "© 1965 Ipanema Music Inc."
}

bossaRhythm = ##t

refrainPortugueseLyrics = \lyricmode {
Ah, Din -- di. __ Se sou bes -- ses o bem que~_eu te que -- ro.
O mun -- do se -- ri -- a, Din -- di, tu -- do, Din -- di, lin -- do, Din -- di.
Ah, Din -- di. __ Se um di -- a vo -- cê for em -- bo -- ra
Me le -- va con -- ti -- go, Din -- di. Fi -- ca, Din -- di. O -- lha, Din -- di.
E~_as á -- guas des -- te rio. __ Aon -- de vão, __ eu não sei.
A mi -- nha vi -- da~_in -- teira, __ es -- pe -- rei, __ es -- pe -- rei, __
por vo -- cê, Din -- di. __
Que~_é a coi -- sa mais lin -- da que~_e -- xis -- te
Vo -- cê não e -- xis -- te, Din -- di,
Ol -- ha, Din -- di, Adivi -- nha, Din -- di. __
}

refrainEnglishLyrics = \lyricmode {
Oh, Din -- di, if I on -- ly had words I would say
all the beau -- ti -- ful things that I see when you're with me, Oh, my Din -- di.
Oh, Din -- di, like the song of the wind in the trees,
that's how my heart is sing -- ing, Din -- di, hap -- py Din -- di,
when you're with me.
I love you more each day, yes, I do, yes, I do.
I'd let you go a -- way if you take me with you,
Don't you know, Din -- di, I'd be run -- ning and search -- ing for you
like a riv -- er that can't find the sea,
that would be me~_without you, my Din -- di.
}

refrainChords = \chordmode {
  ef1:maj7 df1:maj7 ef1:maj7 bf2:m7 ef2:7
  af1:maj7 df1:9.11+ ef1:6 bf1:m7

  ef1:maj7 df1:maj7 ef1:maj7 bf2:m7 ef2:7
  af1:maj7 df1:9.11+ ef1:6 a2:m7.5- d2:7
  
  g1:m ef1:m6 g2:m ef2:m6 g2:m c2:7.9- 
  f1:m df1:m6 f2:m df2:m6 f2:m7 bf2:7

  ef1:maj7 df1:maj7 ef1:maj7 bf2:m7 ef2:7
  af1:maj7 df1:9.11+ ef1:6
  \chordInsideParens{ bf1:m7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Bossa" 4 = 168

  \xTextMark \markup{ \bold \box "A1" }
  
  bf2. g8 f8~ | f2. g8 af8 |
  bf4 bf8 bf8 \tuplet 3/2 { bf4 c4 bf4 } | df4 c8 bf8 \tuplet 3/2 { af4 g4 f4 } |
  \break
  \tuplet 3/2 { g4 ef4 ef4 } ef2 | \tuplet 3/2 { g4 ef4 ef4 } ef2 |
  \tuplet 3/2 { g4 ef4 ef4 } ef2 | r1
  
  \sect "A2"
  
  bf'2. g8 f8~ | f2. g8 af8 |
  bf4 bf8 bf8 \tuplet 3/2 { bf4 c4 bf4 } | df4 c8 bf8 \tuplet 3/2 { af4 g4 f4 } |
  \break
  \tuplet 3/2 { g4 ef4 ef4 } ef2 | \tuplet 3/2 { g4 ef4 ef4 } ef2 |
  \tuplet 3/2 { g4 ef4 ef4 } ef2 | r1
  
  \sect "B"
  
  r4 r8 d'8 c8 bf8 a8 g8 | gf2~ gf8 ef4 gf8 | g2~ g8 ef4 gf8 | g1 |
  \break
  r4 r8 c8 bf8 af8 g8 f8 | e2~ \tuplet 3/2 { e4 cs4 e4 } |
  f2~ \tuplet 3/2 { f4 cs4 e4 } | f2~ \tuplet 3/2 { f4 g4 af4 } |
  
  \sect "A3"

  bf2. g8 f8~ | f2. g8 af8 |
  bf4 bf8 bf8 \tuplet 3/2 { bf4 c4 bf4 } | df4 c8 bf8 \tuplet 3/2 { af4 g4 f4 } |
  \break
  \tuplet 3/2 { g4 ef4 ef4 } ef2 | \tuplet 3/2 { g4 ef4 ef4 } ef2 |
  \tuplet 3/2 { g4 ef4 ef4 } ef2~ | ef1
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

refrainLyricsLanguageOne = \refrainPortugueseLyrics
refrainLyricsLanguageTwo = \refrainEnglishLyrics

\include "../Include/refrain-two-languages.ily"

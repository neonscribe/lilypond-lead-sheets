%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 16) #}
)

\header {
  title = "Chega de Saudade (No More Blues)"
  subtitle = \instrument
  poet = "Vinicius de Moraes, Jon Hendricks & Jessie Cavanaugh"
  composer = "Antônio Carlos Jobim"
  copyright = "© 1958 Editora Musical Arapuã, Sao Paulo, Brazil. © 1967 TRO-Hollis Music Inc., New York"
}

bossaRhythm = ##t

refrainPortugueseLyrics = \lyricmode {
Vai, mi -- nha tris -- te -- za_E diz a e -- la que sem e -- la não po -- de ser
Diz -- lhe nu -- ma pre -- ce
Que_e -- la re -- gres -- se
Por -- que_eu não pos -- so mais so -- frer

Che -- ga de sau -- da -- de_A rea -- li -- da -- de_é que sem e -- la Não há paz,
não há be -- le -- za_É só tris -- te -- za_e_a me -- lan -- co -- li -- a
Que não sai de mim não sai de mim Não sai

Mas se_e -- la vol -- tar, se_e -- la vol -- tar
Que coi -- sa lin -- da Que coi -- sa lou -- ca
Pois há me -- nos pei -- xi -- nhos a na -- dar no mar
Do que_os bei -- ji -- nhos que_eu da -- rei na su -- a bo -- ca

Den -- tro dos meus bra -- ços,
Os a -- bra -- ços Hão de ser mi -- lhões de_a -- bra -- ços
A -- per -- ta -- do_as -- sim Co -- la -- do_as -- sim Ca -- la -- do_as -- sim
A -- bra -- ços e bei -- ji -- nhos e ca -- ri -- nhos sem ter fim
Que_é pra_a -- ca -- bar com_es -- se ne -- gó -- cio De vo -- cê vi -- ver sem mim
}

refrainEnglishLyrics = \lyricmode {
No more blues,
I'm goin' back home,
No, no more blues,
I prom -- ise no more to roam.
Home is where the heart is,
the fun -- ny part is
My heart's been right there all a -- long.
No more tears and no more sighs,
And no more fears,
I'll say no more good -- byes.
If trav -- el beck -- ons me I swear I'm gon -- na re -- fuse,
I'm gon -- na set -- tle down and there'll be no more blues.
Ev -- 'ry day while I am far a -- way
my thoughts turn home -- ward, for -- ev -- er home -- ward.
I trav -- elled 'round the world in search of hap -- pi -- ness,
But all my hap -- pi -- ness I found was in my home -- town.
No more blues,
I'm going back home,
No, no more dues,
I'm through with all my wan -- drin' now
I'll set -- tle down and live my life
And find a man and make a home,
When we set -- tle down
There'll be no more blues,
Noth -- in' but hap -- pi -- ness,
When we set -- tle down
There'll be no more blues.
}

refrainHLChords = \chordmode {
  d1:m d1:m7/c e1:7/b e1:7
  e1:m7.5- a1:7.9- d1:m e2:m7.5- a2:7.9-
  
  d1:m b2:m7.5- e2:7 a1:m7 a1:m7
  bf1:maj7 bf1:maj7 a1:7.9- a1:7.9-
  
  d1:m d1:m7/c e1:7/b e1:7
  e1:m7.5- a1:7.9- d1:m d1:7.9-
  
  g2:m g2:m7/f a2:7/e a2:7 d1:m d1:m7/c
  b1:m7.5- bf1:m6 d1:m a1:7
  
  d1:maj7 b1:7.5+/ds e1:m7 e1:m7
  a2:sus7 a2:7 a1:7 d1:dim7 d1:maj7

  fs1:m7 f1:dim7 e1:m7 e1:m7
  e1:7 e1:7 e1:m7.5- a1:7
  
  d2:maj7 d2:maj7/cs b1:m7 e1:7 e1:7
  fs1:7 fs1:7 b2:m7 bf2:m7 a2:m7 d2:7.9-
  
  g1:maj7 g1:m7 fs1:m7 b2:7 b2:7.5+
  e1:7 e2:m7 a2:sus7/g fs1:m7 b1:7.5+
  
  e1:7 e2:m7 a2:sus7 d1:6
  \chordInsideParens{ a1:7.5+ }
}

refrainNewRealChords = \chordmode {
  d1:m d1:m7/c e1:7/b e1:7/b
  a1:7.9-.5+ a1:7.9-.5+ d1:m e2:m7.5- a2:7
  
  d1:m b2:m7.5- e2:7 a1:m a1:m
  bf1:maj7 bf1:6 a1:7.9- a1:7.9-
  
  d1:m d1:m7/c e1:7/b e1:7/b
  a1:7.9-.5+ a1:7.9-.5+ d1:m d1:7.9-
  
  g1:m a1:7 d1:m d1:m7/c
  e1:7.9- a1:7.9-.5+ d1:m e2:m7 a2:7
  
  d1:maj7 b1:7.5+/ds e1:m7 e1:m7
  a1:sus9 a1:7 d1:dim7 d1:maj7

  fs1:m7 f1:dim7 e1:m7 e1:m7
  e1:9 e1:9 g1:m6 a1:7
  
  d1:maj7 b1:m7 e1:7 e1:7
  fs1:7 fs1:7 b2:m7 bf2:m7 a2:m7 d2:7
  
  g1:maj7 g1:m7 fs1:m7 b2:13 b2:7.5+
  e1:9 a1:sus13 fs1:m7 b1:7.5+
  
  e1:9 a1:sus9 d1:6
  \chordInsideParens{ a1:7.5+ }
}

refrainChords = \refrainHLChords

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium Bossa Nova" 4 = 150

  \xTextMark \markup{ \bold \box "A" }
  
  f4. a,2 d8~ | d2~ d8 f4 e8~ | e4. b2 d8~ | d2~ d8 e4 f8~ |
  \break
  f4. bf,2 cs8~ | cs2~ cs8 f4 e8~ | e8 d4 f8 e8 d4 a8~ | a1 |
  \break
  f'4. a,2 b8~ | b2~ b8 d4 c8~ | c4. e8~ e2~ | e4 e8 d4 c4 c8~ |
  \break
  c4. bf8~ bf2~ | bf4 f'8 e4 d4 d8~ | d8 cs4 e8 cs4 bf4~ | bf2. r4 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "B" }

  f'4. a,2 d8~ | d2~ d8 f4 e8~ | e4. b2 d8~ | d2~ d8 e4 f8~ |
  \break
  f4. bf,2 cs8~ | cs2~ cs8 f4 e8~ | e8 d4 cs8 d4 ef4~ | ef4 d8 fs4 a4 g8~ |
  \break
  g4. bf2 cs,8~ | cs2~ cs8 a'4 g8~ | g8f4 a4 g8 f4 | e4 d8 cs4 d4 f8~ |
  \break
  f8 d4 b4 d4 f8~ | f8 cs4 bf4 f'4 d8~ | d1 | r1 |

  \bar "||"
  \pageBreak

  \key \refrainKey \major
  \xTextMark \markup{ \bold \box "C" }
  
  fs2.. a8~ | a4. g4 ds4 fs8~ | fs4. e8 ds8 e4 b'8~ | b4 g8 e4 b4 d8~ |
  \break
  d4. cs8~ cs2~ | cs4 e8 cs4 a4 b8~ | b2.. a8~ | a2~ a8 cs4 e8~ |
  \break
  e8 d4 cs4 d4 f8~ | f8 gs4 cs4 b4 a8~ | a8 g4 b,8~ b2~ | b4 b8 cs4 d4 fs8~ |
  \break
  fs8 e4 d8 b4 gs4~ | gs4 b8 cs4 e4 d8~ | d2.. cs8~ | cs1 |
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "D" }
  
  fs4. a,2 b8~ | b2~ b8 fs'4 e8~ | e4. b2 d8~ | d2~ d8 e4 fs8~ |
  \break
  fs4. as,2 cs8~ | cs2~ cs8 fs4 e8~ | e8 d4 cs8 d4 e4~ | e4 d8 fs4 b4 a8~ |
  \break
  a8 fs4 d4 b4 a'8~ | a8 f4 d4 bf4 a'8~ | a8 e4 cs4 a4 gs'8~ | gs8 b4 g4 b4 fs8~ |
  \break
  fs8 d4 b8 d4 fs4~ | fs4 d8 b4 d4 fs8~ | fs2~ fs8 fs8 g8 a8 | b4 a8 g4 fs4 d8~ |
  \break
  d8 b4 d8 fs4 d4~ | d4 b8 d4 fs4 d8~ | d1 | r1 |
  

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

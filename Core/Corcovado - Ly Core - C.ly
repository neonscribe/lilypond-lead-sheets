%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Corcovado (Quiet Nights of Quiet Stars)"
  subtitle = \instrument
  poet = "Gene Lees"
  composer = "Antônio Carlos Jobim"
  copyright = "© 1960 Jobim Music Ltda."
}

bossaRhythm = ##t

refrainPortugueseLyrics = \lyricmode {
  Um can -- ti -- nho,_um vi -- o lão
  es -- te_a -- mor, u -- ma __ can -- ção
  Pra fa -- zer fe -- liz a quem se a -- ma __
  Mui -- ta cal -- ma pra pen -- sar __
  E ter tem -- po pra so -- nhar
  Da ja -- ne -- la vê -- se_o 
  Cor -- co -- va -- do_O Re -- den -- tor, __ que lin -- do!
  
  Que -- ro_a vi -- da sem -- pre_as -- sim
  Com vo -- cê per -- to __ de mim
  A té __ o a -- pa -- gar da ve -- lha cha -- ma __
  E eu que e -- ra tris -- te __
  Des -- cren -- te des -- se mun -- do
  Ao en -- con -- trar vo -- cê
  Eu co -- nhe -- ci
  O que_é fe -- li -- ci -- da -- de, Meu a -- mor__
}

refrainEnglishLyrics = \lyricmode {
  Qui -- et nights of qui -- et stars,
  qui -- et chords from my __ gui -- tar
  float -- ing on the si -- lence that sur -- rounds us. __
  Qui -- et thoughts and qui -- et dreams, __
  qui -- et walks by qui -- et streams,
  and a win -- dow look -- ing on the moun -- tains and the sea. __
  How love -- ly!
  This is where I want __ to be.
  Here, with you so close __ to me
  un -- til __ the fi -- nal flick -- er of life's em -- ber. __
  I who was lost and  lone -- ly, __
  be -- lie -- ving life was on -- ly __
  a bit -- ter tra -- gic joke,
  have found with you, __
  the mean -- ing of ex -- ist -- ence. 
  Oh, my love. __
}

refrainChordsBossaSongbook = \chordmode {
  s1 s1
  a1:m6 af1:dim7.13- g1:m6 c1:9
  f1:maj7 f1:m6 e1:m7 a1:m7 a1:m6 af1:dim7.13-

  a1:m6 a1:m6 af1:dim7.13- af1:dim7.13-
  g1:m7 c1:sus9 f1:maj7 f1:6
  f1:m7 bf1:9 e1:7.9- a1:7.9-
  a1:m6 a1:m6 bf1:9 bf1:9

  a1:m6 a1:m6 af1:dim7.13- af1:dim7.13-
  g1:m7 c1:sus9 f1:maj7 f1:6
  f1:m7 bf1:9 e1:m7 a1:m7
  d1:m7 g2:sus9 g2:7.9- e1:m7 a1:7.9-.13-
  d1:m7 g2:sus9 af2:dim7
  c1:6
}

refrainChordsRealBookSixth = \chordmode {
  s1 s1
  a1:m6 af1:dim7.13- g1:m6 c1:9
  f1:maj7 f1:m6 e1:m7 a1:m7 a1:m6 af1:dim7.13-
  
  d1:7/a d1:7/a af1:dim7 af1:dim7
  g1:m7 c1:7 f2:dim7 f2:maj7 f1:maj7
  f1:m7 bf1:7 e1:m7 a1:7.5+
  d1:7 d1:7 d1:m7 af1:dim7

  d1:7/a d1:7/a af1:dim7 af1:dim7
  g1:m7 c1:7 f2:dim7 f2:maj7 f1:maj7
  f1:m7 bf1:7.5- e1:m7 a1:m7
  d1:7 g1:7.9- e1:m7 a1:7.5+

  d1:m7 g1:7

  c1:6
}

refrainChordsRealBookSixthNicoFixes = \chordmode {
  a1:m a1:m
  ef1:7/af ef1:7/af g1:m7 c1:7
  f1:maj7 bf1:7 a1:m a1:m7/g d1:7/fs f1:dim7
  
  d1:7/a d1:7/a af1:dim7 af1:dim7
  g1:m7 c1:7 f2:dim7 f2:maj7 f1:maj7
  f1:m7 bf1:7 e1:m7 a1:7
  d1:7 d1:7 d1:m7 af1:dim7

  d1:7/a d1:7/a af1:dim7 af1:dim7
  g1:m7 c1:7 f2:dim7 f2:maj7 f1:maj7
  f1:m7 bf1:7.5- e1:m7 a1:m7
  d1:m7 g1:7.9- e1:m7 a1:7.5+

  d1:m7 g1:7

  c1:6
}

refrainChords = \refrainChordsRealBookSixthNicoFixes

refrainKey = c

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Bossa" 4 = 125

  \mark \markup { "Intro" }
  
    <<
      \new Voice
      { \voiceTwo
	r2 \tuplet 3/2 {a4 b4 c4 } |
	b8 a4 e4 d4 e8~ | e1~ |
	e8 b4 e4 ef4 d8~ |  d2 \tuplet 3/2 { g4 a4 bf4 } |
	a8 g4 c4 a4 g8~ | 
	\break
	g4 a4~ \tuplet 3/2 { a4 d,4 c4 } |
	d2. c4 | d2 e2~ |
	e2 \tuplet 3/2 { g4 d4 c4 } | d2 \tuplet 3/2 { c4 b4 c4 } |
	b2. d4 |

	\bar "||"
	\pageBreak
	\set Score.currentBarNumber = #1
  
	\bar ".|:-||"

	\mark \markup{ \box "A" }

	c4 s4 s2 |
      }
      { \voiceOne
	s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
	r8 e4 d8 e8 d4 e8~ |
	}
    >>
  \oneVoice

  e8 d8 e2. |
  r8 e4 d8 e8 d4 e8~ | e8 d8 e2. |
  \break
  r8 d4 c8 d8 c4 d8~ | d8 c4 f4 e4 e8~ |
  e4. d8~ d2~ | d2. r4 |
  \break
  r8 g4 f8 g8 f4 g8~ | g8 f4 g8~ g2 |
  r8 f4 e8 f8 e4 f8~ | f8 e8 f2. |
  \break
  r8 e4 d8 e8 d4 e8~ | e8 d4 e4 d8 f4~ |
  f8 e4 f8 e4 f4~ | f8 e4 d4 c4. |

  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  r8 e4 d8 e8 d4 e8~ | e8 d4 e8~ e2 |
  r8 e4 d8 e8 d4 e8~ | e8 d8 e4. g4 d8~ |
  \break
  d2 \tuplet 3/2 { c4 d4 c4 } | d8 c4 f4 e4 e8~ |
  e4. d8~ d2~ | d2. r4 |
  \break
  r8 c'4 bf4 af8 g8 f8 | e4. d8~ d2 |
  r4 r8 b'8 a8 g8 f8 e8 | d4. c8~ c2 |
  \break
  r4 r8 a'8 g8 f8 e8 d8 | c8 b4 c4 d4 g8~ |
  g1~ | g2. r4 |
  \break
  r4 r8 a8 g8 f8 e8 d8 | c8 b4 c4 d4 c8~ |
  \bar ":|."
  c1^"last time" |
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

chordDiagrams = \chordmode {
  a:m6 s af:dim7.13- s g:m6 s c:9 s f:maj7 s f:m6 s e:m7
  a:m7 g:m7 c:sus9 f:6 f:m7 s bf:9 s
  e:7.9- s a:7.9- s d:m7 s g:sus9 s g:7.9- a:7.9-.13- s af:dim7
}

%%% Only with the Bossa Songbook chords
%%% \include "../Include/chord-diagrams.ily"

\markup {
  %% Leave a gap after the fret diagrams
  \vspace #3
}

refrainLyricsLanguageOne = \refrainPortugueseLyrics
refrainLyricsLanguageTwo = \refrainEnglishLyrics

\include "../Include/refrain-two-lang-no-note-names.ily"

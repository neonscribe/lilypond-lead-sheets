%% -*- Mode: LilyPond -*-

%{

"Customizer": { "choices": { "lyricsLanguage": [ "portuguese", "english" ] } }

%}

songID = "2026-06-01T22:16:47.307178Z"

\include "../Include/lead-sheets.ily"

lyricsLanguage = #(if (and (defined? 'lyricsLanguage) lyricsLanguage)
		   lyricsLanguage
		   "portuguese")

lyricsCredit = #(let ((v (assoc lyricsLanguage
			  '(
			    ("english" . "English lyrics by Ray Gilbert")
			    ("portuguese" . "Portuguese lyrics by Vinícius de Moraes")))))
		 (if v (cdr v) ""))

headerTitle = "Once I Loved (Amor Em Paz)"
headerSubtitle = \subtitle
headerPoet = \lyricsCredit
headerComposer = "Antônio Carlos Jobim"
headerCopyright = "© 1965 Ipanema Music"

bossaRhythm = ##t

refrainLyricsEnglish = \lyricmode {
  Once __ I loved, __
  And I gave so much love to this love,
  You were the world to me; __
  Once __ I cried __ at the
  thought I was fool -- ish and proud and let you
  say good -- bye. __

  Then __ one day, __
  From my in -- fi -- nite sad -- ness
  you came and brought me love a -- gain;
  Now __ I know __ that no mat -- ter what -- ev -- er be -- falls
  I'll nev -- er let you go, __ I will hold __ you close, __
  Make __ you stay; __
  Be -- cause love is the _ sad -- dest thing _
  when it goes a -- way,
  Be -- cause love is the _ sad -- dest thing _
  when it goes a -- way. __
}

refrainLyricsPortuguese = \lyricmode {
Eu __ a -- mei __
E a -- mei, ai de mim,
Mui -- to mais do que de -- vi -- a_a -- mar __
E __ cho -- rei
Ao sen -- tir que_eu i -- ri -- a so -- frer
E me de -- ses -- pe -- rar __
Foi, __ en -- tão __
Que da mi -- nha_in -- fi -- ni -- ta tris -- te -- za_A -- con -- te -- ceu vo -- cê __
En -- con -- trei __ em vo -- cê
A ra -- zão de vi -- ver E de a -- mar em paz __
E não so -- frer mais __
Nun -- ca mais __
Pois o_a -- mor é a coi -- sa mais tris -- te Quan -- do se des -- faz __
Pois o_a -- mor é a coi -- sa mais tris -- te Quan -- do se des -- faz __
}

refrainLyrics = #(let ((v (assoc lyricsLanguage
			   (list
			    (cons "english" refrainLyricsEnglish)
			    (cons "portuguese" refrainLyricsPortuguese)
			  ))))
		  (if v (cdr v) #{ \lyricmode { } #}))

refrainChords = \chordmode {
  b1:m7 e1:9.5+ a1:maj7 bf1:dim7
  b1:m7 c1:dim7 cs1:m7 cs1:m7

  a1:m7 d1:9.5+ g1:maj7 g1:maj7 gs1:m7.5- cs1:7

  fs1:maj7 fs1:7

  b1:m7 e1:9.5+ a1:maj7 bf1:dim7
  b1:m7 c1:dim7 cs1:m7 cs1:m7

  a1:m7 d1:9.5+ g1:maj7 g1:maj7 gs1:m7.5- cs1:7

  fs1:maj7 b1:7

  e1:maj7 a1:7
  d1:maj7 d1:maj7 ds1:dim7 d1:m6 fs1:7/cs c1:7.5- b1:7
  b2:m7
  \chordInsideParens{ cs2:7.5+ }
  fs1:m
  \chordInsideParens{ fs1:7 }
}

refrainKey = fs
isMinor = ##t

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempoFour "Medium Bossa [João Gilberto 1961]" 116

  \sectNoBar "A1"

  fs1~ | fs2~ fs8 e4 cs8~ | cs1~ | cs2 \tuplet 3/2 { r4 d4 e4 } |

  \tuplet 3/2 { fs4 fs4 fs4 } \tuplet 3/2 { fs4 fs4 fs4 } |
  fs2 \tuplet 3/2 { a4 gs4 fs4 } |
  \tuplet 3/2 { gs4 e4 cs4~ } cs2~ | cs2. r4 |

  e1~ | e2~ e8 d4 b8~ | b1~ | b2 \tuplet 3/2 { r4 b4 cs4 } |
  \tuplet 3/2 { d4 d4 cs4 } \tuplet 3/2 { e4 e4 d4 } |
  cs2 \tuplet 3/2 { b4 d4 cs4 } |

  b8 as4 as8~ as2~ | as2. r4 |
  \bar "||"

  \xxPageBreak

  \sectNoBar "A2"

  fs'1~ | fs2~ fs8 e4 cs8~ | cs1~ | cs2 \tuplet 3/2 { r4 d4 e4 } |

  \tuplet 3/2 { fs4 fs4 fs4 } \tuplet 3/2 { fs4 fs4 fs4 } |
  fs2 \tuplet 3/2 { a4 gs4 fs4 } |
  \tuplet 3/2 { gs4 e4 cs4~ } cs2~ | cs2. r4 |

  e1~ | e2~ e8 d4 b8~ | b1~ | b2 \tuplet 3/2 { r4 b4 cs4 } |
  \tuplet 3/2 { d4 d4 cs4 } \tuplet 3/2 { e4 e4 d4 } |
  cs2 \tuplet 3/2 { b4 d4 cs4 } |

  b8 as4 cs8~ cs2 | b8 a4 cs4 b4 gs8~ |

  \sect "B"

  gs1 | b2~ b8 a4 fs8~ |

  fs1~ | fs2 \tuplet 3/2 { r4 fs4 gs4 } |
  \tuplet 3/2 { a4 a4 gs4 } \tuplet 3/2 { gs4 b4 bf4 } | a2 a8 a4 es8 |

  gs4 fs8 fs8~ fs2~ | fs2 \tuplet 3/2 { r4 fs4 gs4 } |
  \tuplet 3/2 { a4 a4 gs4} \tuplet 3/2 { gs4 b4 bf4 } |

  a2 a8 a8 es4 | gs4. fs8 fs2~ | fs2. r4 |

  \bar "|."
}

\include "../Include/refrainonly.ily"

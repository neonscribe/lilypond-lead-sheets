%% -*- Mode: LilyPond -*-

songID = "2026-09-01T15:03:29.48671Z"

\include "../Include/lead-sheets.ily"

headerTitle = "New Orleans"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Hoagy Carmichael"
headerCopyright = "© 1932 Southern Music Publishing Co."

refrainLyrics = \lyricmode {
I've a home in the sun -- ny south -- land, not so far from the 'Sip -- pi shore.
It's a way down there by the Del -- ta where __ you'll find old Dix -- ie's door. __
If your heart's made to love the south -- land and mag -- no -- li -- a trees __ gal -- ore,
hang your hat up, man, in New Or -- leans and __ you'll nev -- er wish __ for more.

If you've nev -- er seen a quaint old south -- ern ci -- ty, __ just think of New -- Or -- leans.
If you've nev -- er seen that town, boy, it's a pit -- y, __ there's no -- thing like New Or -- leans.
It will re -- mind you of old fash -- ioned lace; __ a glass of wine will greet your smil -- ing face. __
And if you ev -- er see a black -- eyed gal like mine, boy, __ you're right in New Or -- leans.

(If you've)
}

refrainChords = \chordmode {
  s4
  
  g1:m d1:7 g1:m d2:7 f2:7
  bf2 f2:7 g2:m7 ef2:maj7 ef2 f2:7 bf2 d2:7

  g1:m d1:7 g1:m d2:9 f2:7
  bf2 f2:7 g2:m7 ef2:maj7 ef2 f2:7 bf2 d2:7

  g2:m a2:7 d2:7 g2:7 c2:7 f2:7 bf2 d2:7
  g2:m a2:7 d2:7 g2:7 c2:7 f2:7 bf1
  
  g2:m ef2:7 d1:7 g2:m a2:7 d1:7
  g2:m a2:7 d2:7 g2:7 c2:7 f2:7 bf2 \chordInsideParens{ d2:7 }
}

refrainKey = bf

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Slow [Hoagy Carmichael 1956]" 78

  \partial 4 d8 d8 |

  \sectNoBreak "Verse"
  
  g8 bf4 g8 bf4 c4 | d4 d2 d,8 d8 | g8 bf4 g8 bf4 c4 | a2. f8 f8 |
  \break
  bf4 bf4 c4 f,8 f8 | d'8 d4 d8~ d4. c8 | bf8 g4 f8~ f8 ef4 d8~ | d2. d8 d8 |
  \break
  g8 bf4 g8 bf4 c4 | d4 d2 d,8 d8 | g8 bf8 g8 bf8~ bf4 c4 | a2. f8 f8 |
  \break
  bf4 bf4 c4 f,8 f8 | d'8 d4 d8~ d4. c8 | bf8 g4 f8~ f8 g4. | bf2 r4 d,8 d8 |

  \bar ".|:-||"
  \repeat volta 2 {

  \sectNoBar "Chorus"
  
  g8. a16 bf8 d8 e,8. f16 g8 a8 | d,8 d4.~ d8 ef8 f8 g8 | d2 f2 | d2. d8 d8 |
  \break
  g8 a8 bf8 d8 e,8 f8 g8 a8 | d,8 d4.~ d8 ef8 f8 g8 | d2 f8 f4. | bf2~ bf8 d8 c8 bf8 |
  \break
  a8 d,8 e8 fs8 g4 bf4 | a2~ a8 c8 bf8 a8 | g8 d8 e8 g8 ef4 bf'4 | a2~ a8 d,8 e8 fs8 |
  \break
  g8 a8 bf8 d8 e,8 f8 g8 a8 | d,8 d4.~ d8 ef8 f8 g8 | d2 f2 | bf2 r4
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize d,8
  \endParenthesis \parenthesize d8 |
  }
  \bar ":|."
}

\include "../Include/refrainonly.ily"

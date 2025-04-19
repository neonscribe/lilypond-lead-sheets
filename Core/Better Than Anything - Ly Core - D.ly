%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Better Than Anything"
  subtitle = \instrument
  poet = "William Loughborough"
  composer = "David Wheat"
  copyright = \markup \small "© 1962 Sanga Music Inc."
}

refrainLyrics = \lyricmode {
Bet -- ter than sail -- ing at mid -- night,
bet -- ter than div -- ing for pearls,
bet -- ter than ski -- ing at As -- pen,
bet -- ter than feed -- ing the squirrels.
Bet -- ter than find -- ing a horse -- shoe,
bet -- ter than los -- ing your head,
bet -- ter than an -- y -- thing thought of,
bet -- ter than an -- y -- thing said.
Bet -- ter than sing -- ing right out loud or be -- ing spot -- ted in a crowd.
Bet -- ter than an -- y -- thing ex -- cept be -- ing in love.
(Bet -- ter than)
}

refrainChords = \chordmode {
  s4
  
  d2.:6.9 c2.:6.9 d2.:6.9 c2.:6.9 d2.:6.9 c2.:6.9 b2:m7 bf4:m7 a2:m7 d4:7.9+
  g2.:6.9 f2.:6.9 g2.:6.9 f2.:6.9 d2.:6.9 c2.:6.9 d2.:6.9 c2.:6.9
  af2.:13.11+ g2.:13 c2.:13 f2.:13 e2.:7.9- ef2.:maj9
  d2.:6.9 c2.:6.9 d2.:6.9 c2.:6.9
}

refrainKey = d

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Jazz Waltz [Irene Kral 1964]" 4 = 150
  
  \partial 4 \tuplet 3/2 { a,8 c8 e8 } |
  \bar "||"

  \sectStart "A"
  
  d4 fs4. d8 | e8 c8 r4 \tuplet 3/2 { a8 c8 e8 } | d8 fs8~ fs4 d4 | e4 r4 \tuplet 3/2 { a,8 c8 e8 } |
  \break
  d4 fs4. d8 | e8 c8 r4 \tuplet 3/2 { a8 c8 e8 } | d8 fs8~ fs4. d8 | e4 r4 \tuplet 3/2 { d8 fs8 a8 } |

  \sect "B"
  
  g4 b4. g8 | a8 f8 r4 \tuplet 3/2 { d8 fs8 a8 } | g4 b4 g8 a8~ | a4 r4 \tuplet 3/2 { a,8 b8 cs8 } |
  \break
  d4 fs4. d8 | e8 c8 r4 \tuplet 3/2 { a8 c8 e8 } | d4 fs4 d8 e8~ | e4 r8 f8 d8 c8 |
  
  \sect "C"
  
  d8 f4 d4 c8 | d4 r8 f8 d8 c8 | d8 f4 d4 c8 | d4 r8 f8 d8 c8 |
  \break
  d8 f4 d4 c8 | d8 f4 d4 c8 | d2. | R2.*1 | r2.*1 | r4 r4
  \override Parentheses.font-size = #5
  \tuplet 3/2 { 
    \startParenthesis \parenthesize
    a8 c8
    \endParenthesis \parenthesize e8
  } |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\pageBreak

\markup {
  \vspace #2
  \column {
    \line { \large { Better than four sets of Dizzy, better than Count Basie's band, } } 
    \line { \large { better than Rollins and Coltrane, better than being on the stand. } }
    \hspace #1
    \line { \large { Better than Ella Fitzgerald, better than Miles' latest news, } } 
    \line { \large { better than Bill Evans' ballads, better than Joe Williams' blues. } } 
    \hspace #1
    \line { \large { Better than hearing Lady Day or checking in at Monterey. } } 
    \line { \large { Better than anything except being in love. } } 
    \vspace #3
    \line { \large { Better than Lucy and Desi, better than Route 66, } } 
    \line { \large { better than Huntley and Brinkley, better than quiz shows all fixed. } }
    \hspace #1
    \line { \large { Better than Kildare and Casey, better than Singing with Mitch, } } 
    \line { \large { better than Hitchcock and Karloff, better than clicking the switch. } } 
    \hspace #1
    \line { \large { Better than movies late at night or watching Emile Griffith fight. } } 
    \line { \large { Better than anything except being in love. } } 
    \vspace #3
    \line { \large { Better than cream cheese and bagels, better than honey on bread, } } 
    \line { \large { better than champagne and pretzels, better the breakfast in bed. } }
    \hspace #1
    \line { \large { Better than chili rellenos, better than chocolate eclairs, } } 
    \line { \large { better than hothouse tomatoes, better than fresh Barlett pears. } } 
    \hspace #1
    \line { \large { Better than dining a la carte or sampling gastronomic art. } } 
    \line { \large { Better than anything except being in love. } } 
    \vspace #3
    \line { \large { Better than elephants dancing, better than clowns on parade, } }
    \line { \large { Better than peanuts and popcorn, better than fresh lemonade, } }
    \hspace #1
    \line { \large { Better than rides on the midway, better than seals blowing horns, } }
    \line { \large { Better than men shot from cannons, better than fresh ears of corn, } }
    \hspace #1
    \line { \large { Better than balancing a wire or watching tigers leap through fire } }
    \line { \large { Better than anything except being in love. } } 
  }
}

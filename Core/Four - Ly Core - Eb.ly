%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Four"
  subtitle = \subtitle
  poet = ""
  composer = "Miles Davis"
  copyright = \markup \small { \now " " "© 1963 Prestige Music Inc." }
}

leadingEighth = ##t

xrefrainLyrics = \lyricmode {
Of the won -- der -- ful things that you get out of life there are four
And they may not be man -- y but no -- bod -- y needs an -- y more
Of the man -- y facts mak -- ing the list of life
Truth takes the lead
And to re -- lax know -- ing the gist of life
It's truth you need

Then the sec -- ond is hon -- or and hap -- pi -- ness makes num -- ber three
When you put them to -- geth -- er you know what the last one must be
Ba -- by so truth, hon -- or and hap -- pi -- ness
And one thing more
Meaning only won -- der -- ful, won -- der -- ful love that -- 'll make four
}

refrainChords = \chordmode {
  s4.

  ef1:maj7 ef1:maj7 ef1:m7  af1:7
  f1:m7 f1:m7 af1:m7 df1:7
  g1:m7 fs2:m7 b2:7 f1:m7 bf1:7

  g1:m7 fs2:m7 b2:7 f1:m7 bf1:7

  g2:m7 fs2:m7 f2:m7 bf4.:7 ef8*9:maj7

  \chordOpenParen{ f2:m7 }
  \chordCloseParen{ bf2:7 }
}

refrainKey = ef

whatKey = #(or whatKey refrainKey)

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium-Up Swing [Miles Davis 1956]" 210

  \partial 4. bf,8 c8 d8 |

  \bar ".|:"
  \repeat volta 2 {
  r8 bf8 c8 d8 r8 bf8 c8 d8 | r8 f8 ef8 d8 r8 bf8 c8 df8~ |
  df1 | r2 r8 ef8 f8 g8 |
  \break
  r8 ef8 f8 g8 r8 ef8 f8 g8 | r8 bf8 af8 g8 r8 ef8 f8 gf8~ |
  gf1 | r2 f8 g8 af8 a8 |
  \break
  bf2 ef,8 g8 bf8 b8 | r8 e,4. ds2 |
  r8 c'4. bf4 a8 g8~ | g2 r8 f8 g8 af8 |
  \break
  } \alternative { {
  bf4 r4 ef,8 g8 bf8 b8~ | b4 e,8 ds8~ ds4 r4 |
  r8 c'4. bf4. af8 | g4 r4 r8 bf,8 c8 d8 |
  } {
  \break
  bf'4 g8 bf8 b8 e,8 ds4 | c'4 af8 f8 d'4 bf8 ef8 \textFine | r1^"(Solo Break)" | r1 |
  } }
  \bar "|."
}

\include "../Include/paper.ily"

\include "../Include/refrain.ily"

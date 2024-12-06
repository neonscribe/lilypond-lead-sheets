%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "It's Different for Girls"
  subtitle = \instrument
  poet = ""
  composer = "Joe Jackson"
  copyright = "© 1979 Joe Jackson"
}

straightEighths = ##t

refrainLyricsOne = \lyricmode {
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _
What the hell is wrong with you to -- night?
I can't seem to say or do the right thing.
Want -- ed to be sure you're feel -- ing right.
Want -- ed to be sure we want the same thing.

She said, I can't be -- lieve it,
you can't pos -- si -- bly mean it.
Don't we all want the same thing?

Don't we? Well, who said an -- y -- thing a -- bout love?

No, not love, she said.
Don't you know that it's dif -- f'rent for girls.
Don't give me love.

No, not love, she said.
Don't you know that it's dif -- f'rent for girls.
You're all the same.
_
You're all the same.
You're all the same.
You're all the same.
You're all the same.
You're all the same.
You're all the same.
You're all the same.
Who said an -- y -- thing a -- bout
_
You're all the same.
}

refrainLyricsTwo = \lyricmode {
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _
Ma -- ma al -- ways told me, save your -- self,
take a lit -- tle time and find the right girl.
Then a -- gain, don't end up on the shelf.
Log -- i -- cal ad -- vice gets you in a whirl.

I know a lot of things that you don't.
You wan -- na hear some?
She said, just give me some -- thing.
Any -- thing, well, give me all you got but not love.
}

refrainChords = \chordmode {
  fs1:5 fs1:5 fs1:5 fs1:5
  
  fs1:5 fs1:5 fs1:5 fs1:5
  ds1:m ds4:m cs4

  fs1:5 fs1:5 fs1:5 fs1:5
  ds1:m ds4:m cs4

  r4 b4 fs2 fs2 b4 fs4 ds2:m as2:m as2:m ds4:m as4:m
  r4 b4 fs2 fs2 b4 fs4 ds2:m as2:m e2 b2

  fs2 gs2:m/fs fs2:maj7 gs2:m/fs a2 b2/a a2:maj7 b2/a
  fs2 gs2:m/fs fs2:maj7 gs2:m/fs a2 b2/a a2:maj7 b2/a
  
  a1 a1
  
  a1 a1 b1 b1
  a1 a1 b1 b1

  a1 a1 a1 a1
}

refrainKey = fs

refrainMelody = \relative f' {
  \numericTimeSignature
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Rock" 4 = 118

  \xTextMark \markup{ \bold \box "Intro" }
  
  \bar ".|:"
  \repeat volta 2 {
  cs'8 fs,8 cs'8 fs,8 cs'8 fs,8 cs'8 fs,8 | cs'8 fs,8 cs'8 fs,8 cs'8 fs,8 cs'8 fs,8 |
  cs'8 fs,8 cs'8 fs,8 cs'8 fs,8 cs'8 fs,8 | cs'8 fs,8 cs'8 fs,8 cs'8 fs,8 cs'8 fs,8 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A1" }
  
  r2 as8 as8 as8 b8 | gs4 gs4 gs8 b8 as4 | r2 as8 as8 as8 b8 |
  \break
  gs4 gs4 gs8 b8 as4 |
  fs1 |
  \time 2/4
  r2 |
  \time 4/4
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  r2 as8 as8 as8 b8 | gs4 gs4 gs8 b8 as4 | r2 as8 as8 as8 b8 |
  \break
  gs4 gs4 gs8 b8 as4 |
  fs1 |
  \time 2/4
  r2 |
  \time 4/4
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  r4 ds'4 cs2~ | cs8 cs8 cs8 cs8 ds4 cs4 | ds4.( cs8) cs2 | r8 cs8 cs8 cs8 ds4 cs4 |
  \break
  r4 ds4 cs2 | r8 cs8 cs8 cs8 ds8( cs8) cs4 | ds4.( cs8) cs4. cs8 | e8 e8 e8 e8 ds8 cs8 b8( cs8) |

  \bar "||"

  \xPageBreak

  \xTextMark \markup{ \bold \box "Chorus" }

  \segnoSign

  cs1 | cs4 as4 gs8 fs8 fs8( gs8) | r4 cs8 e8 fs4 ds8 b8 | a8 a8 a8 a8~ a8 b8 b8 cs8 |
  \break
  cs1 | cs4 as4 gs8 fs8 fs8( gs8) | r4 cs8 e8 fs4 ds8 b8 | a8 a8 a8 a8~ a2~ | a4 r8 cs8 b4 e8 cs8~ \textToCoda |

  \break
  \alternative { \volta 1 {

  cs1 | r1 |

  \break
  } \volta 2 {

  cs4\repeatTie cs8 b8~ b4 e8 cs8~ | cs4 cs8 b8~ b4 e8 cs8~ | cs4 cs8 b8~ b4 e8 cs8~ | cs4 cs8 b8~ b4 e8 cs8~ |
  \break
  cs4 cs8 b8~ b4 e8 cs8~ | cs4 cs8 b8~ b4 e8 cs8~ | cs4 cs8 b8~ b4 e8 cs8 | e8 e8 cs8 a8 b8 a8 b8( a8) \dalSegno |
  } } }
  \bar "$"

  \textCodaBreak

  cs1\repeatTie | r4 r8 cs8 b4 e8 cs8~ cs4 r4 r2\fermata |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"

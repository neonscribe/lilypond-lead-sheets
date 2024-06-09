%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Strawberry Fields Forever"
  subtitle = \instrument
  poet = ""
  composer = "John Lennon/Paul McCartney"
  copyright = "© 1967 Northern Songs Ltd."
}

introLyrics = \lyricmode {
}

introChords = \chordmode {
  e2 e2:maj7 e1:7 fs2:m e2 d4 a4
}

introKey = a

introMelody = \relative f' {
  \numericTimeSignature
  \time 4/4
  \key \introKey \major
  \clef \whatClef
  \tempo "Medium Slow" 4 = 103

  \textMark \markup{ \bold \box "Intro" }

  <gs b>8 r8 <gs b>8 r8 <gs b>8 r8 <gs b>8 r8 | <gs b>8 r8 <gs b>4 <fs a>4 <e gs>4 |
  r8 fs8 a4 r8 e8 gs4 |
  \time 2/4
  <d fs>4 e4 |
  \numericTimeSignature
  \time 4/4
  
  \bar "||"
}

introBass = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef bass

  e2 ds2 | d1 | cs2 b2 | a4 cs4 |
}

refrainLyricsOne = \lyricmode {
Let me take you down, __ 'cause I'm go -- ing to __
Straw -- ber -- ry Fields.
No -- thing is real,
and no -- thing to get hung a -- bout.
Straw -- ber -- ry Fields for -- ev -- er. __

Liv -- ing is eas -- y with eyes closed, __
mis -- un -- der -- stand -- ing all you see. __
It's get -- thing hard to be some -- one, but it all works out;
it does -- n't mat -- ter much to me.

Let me take you down, __ 'cause I'm go -- ing to __
Straw -- ber -- ry Fields.
No -- thing is real,
and no -- thing to get hung a -- bout.
Straw -- ber -- ry Fields for -- ev -- er. __
_ _ _ _ _ _ _ _
Straw -- ber -- ry Fields for -- ev -- er. __
Straw -- ber -- ry Fields for -- ev -- er. __
Straw -- ber -- ry Fields for -- ev -- er. __
}

refrainLyricsTwo = \lyricmode {
_ _ _ _ _ _ _ _ _ _
_ _ _ _
_ _ _ _
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _
No one I think is in my tree, __
I mean, it must be high or low. __
That is, you can't, you know,
tune in, but it's all __ _ right.
That is, I think it's not too bad.
}

refrainLyricsThree = \lyricmode {
_ _ _ _ _ _ _ _ _ _
_ _ _ _
_ _ _ _
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _
Al -- ways, no, some -- times think it's me, __
but_you know I know when it's a dream. __
I think a “No,” I mean a “Yes,” but it's all __ _ wrong.
That is, I think I dis -- a -- gree.
}

refrainLyricsFour = \lyricmode {
}

refrainChords = \chordmode {
  a1:1.3.5.9 a1:1.3.5.9
  
  e1:m7 e1:m7 fs1:7.9- fs1:7.9-
  d4. e8 fs1
  d2.:maj7
  a1
  
  e2 e2:maj7 e2:7 b4:m7 cs4:7
  fs2:m fs2:m/e d1:maj7 d2:maj7 e2:7
  a2 fs2:m7 b2:m7 e2 d2 a2 
  a1:1.3.5.9 a1:1.3.5.9
  
  e1:7 e2:7 e2:7/d cs1:dim7 cs1:dim7
  d4. e8 fs1
  
  d2.:maj7 a1 a1
  
  d2.:maj7 a2 fs2:m
  d2.:maj7 a1
  d4.:maj7 e4.
  d1 a1
}

refrainKey = a

refrainMelody = \relative f' {
  \numericTimeSignature
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  r4 cs'8 cs8 d8 cs4 a8~ | a4 e8 fs8 b8 a4 g8~ |

  \bar "||"

  \textMark \markup{ \bold \box "Chorus" }
  
  g2 \tuplet 3/2 { g4 a4 b4 } | e,2 r2 |
  \break
  r2 \tuplet 3/2 { g4 a4 bf4 } | e,2 r4 r8 e8 |
  \time 2/4
  e'8 d8 cs8 b8 |
  \numericTimeSignature
  \time 4/4
  as16 b16 cs4. r2 |
  \break
  \time 3/4
  cs8 a8 fs8 cs'8( a8) e8 |
  \numericTimeSignature
  \time 4/4
  b'8 a4.~ a2 |

  \break

  \textMark \markup{ \bold \box "Verse" }
  
  \bar ".|:-||"
  \repeat volta 3 {
  \tuplet 3/2 { b4 b4 b4 } \tuplet 3/2 { b4 b4 b4 } |
  \tuplet 3/2 { b2 b4~ } b2 | r8 a8 a8 a8 cs8 b8 a8 gs8 | a16( gs16 fs4) r8 r2 |
  \pageBreak
  r8 a8 a8 a8 gs8. fs16 e8 cs'8 | a8 a16 a16 a16( b16) a16( gs16) fs4 r4 |
  r8 a8 a8 a8 b8 a8 gs8 a8 | a1 |
  \break
  r4 cs8 cs8 d8 cs4 a8~ | a4 e8 fs8 b8 a4 g8~ |

  \bar "||"

  \textMark \markup{ \bold \box "Chorus" }
  
  g2 \tuplet 3/2 { g4 a4 b4 } | e,2 r2 |
  \break
  r2 \tuplet 3/2 { g4 a4 bf4 } | e,2 r4 r8 e8 |
  \time 2/4
  e'8 d8 cs8 b8 |
  \numericTimeSignature
  \time 4/4
  as16 b16 cs4. r2 |
  \alternative { \volta 1,2 {
  \time 3/4
  cs8 a8 fs8 cs'8( a8) e8 |
  \numericTimeSignature
  \time 4/4
  b'8 a4.~ a2 | d8 cs8 a8 g8 e8 d8 cs8 a8 |
  \break
  } \volta 3 {
  \time 3/4
  cs'8 a8 fs8 cs'8( a8) e8 |
  \numericTimeSignature
  \time 4/4
  b'8 a4.~ a2 |
  \time 3/4
  cs8 a8 fs8 cs'8( a8) e8 |
  \numericTimeSignature
  \time 4/4
  b'8 a4.~ a2 |
  \break
  \time 3/4
  cs8 a8 fs8 e'8( d8) e,8 |
  \numericTimeSignature
  \time 4/4
  fs8 a4.~ a2 | r1\fermata |
  } } }
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro-with-bass.ily"

\include "../Include/refrain-four-verses.ily"

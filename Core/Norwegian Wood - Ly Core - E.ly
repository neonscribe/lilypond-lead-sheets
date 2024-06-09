%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  (set-global-staff-size 18))

\header {
  title = "Norwegian Wood"
  subtitle = \instrument
  poet = ""
  composer = "John Lennon/Paul McCartney"
  copyright = "© 1966 Northern Songs Ltd."
}

refrainLyricsOne = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _

\set stanza = "1. "
I once had a girl, or should I say she once had me.
She showed me her room is -- n't it good Nor -- we -- gian wood.

She asked me to stay and she told me to sit an -- y -- where.
So I looked a -- round and I no -- ticed there was -- n't a chair.

I sat on a rug, bid -- ing my time, drink -- ing her wine.
We talked un -- til two and then she said, “It's time for bed.”
}

refrainLyricsTwo = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _

\set stanza = "3. "
\once \override LyricText.font-shape = #'italic
\once \override LyricText.self-alignment-X = #LEFT
Instrumental _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _
\once \override LyricText.font-shape = #'italic
\once \override LyricText.self-alignment-X = #RIGHT
"(End instrumental)"

She told me she worked in the morn -- ing and start -- ed to laugh.
I told her I did -- n't and crawled off to sleep in the bath.

\set stanza = "4. "
And when I a -- woke I was a -- lone, this bird had flown.
So I lit a fire, is -- n't it good Nor -- we -- gian wood.
}

refrainChords = \chordmode {
  e1. e4. b4:m7 a8 e2.
  
  e1. e4. b4:m7 a8 e2.
  e1. e4. b4:m7 a8 e2.

  e1.:m7 a1. e4. e4.:m7+/ds e4.:m7/d e4.:m6/cs fs2.:m7 b2.

  e1. e4. b4:m7 a8 e2.
  e1. e4. b4:m7 a8 e2.

  e1. e4. b4:m7 a8 e2.
}

refrainKey = e

refrainMelody = \relative f' {
  \time 12/8
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \textMark \markup{ \bold \box "Intro" }
  
  \bar ".|:"
  \repeat volta 2 {
  b4. cs8 b8 a8 gs4. fs8 a8 gs8 | e4. d8 a'8 cs,8 b2. |
  }
  
  \break

  \textMark \markup{ \bold \box "Verse" }
  
  \bar ":|.|:"
  \repeat volta 2 {
  b'4. cs8 b8 a8 gs4. fs8 a8 gs8 | e4. d8 a'8 cs,8 b2. |
  \break
  b'4. cs8 b8 a8 gs4. fs8 a8 gs8 | e4. d8 a'8 cs,8 b4. r4 e8 |

  \bar "||"
  \break

  \textMark \markup{ \bold \box "Bridge" }
  
  b'8 b8 b8 b8 a8 a8 a8 g8 g8 g8 a8. g16 | a4. r4. r4. r4 b,8 |
  \break
  b'8 b8 b8 b8 a8 a8 a8 g8 g8 g8 a8. g16 | a2. r2. |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "Verse" }
  
  b4. cs8 b8 a8 gs4. fs8 a8 gs8 | e4. d8 a'8 cs,8 b2. |
  \break
  b'4. cs8 b8 a8 gs4. fs8 a8 gs8 | e4. d8 a'8 cs,8 b4. r4 e8 |
  }

  \break

  \textMark \markup{ \bold \box "Outro" }

  b'4. cs8 b8 a8 gs4. fs8 a8 gs8 | e4. d8_"ritard" a'8 cs,8 b2.\fermata |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"

%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "Someday My Prince Will Come"
  subtitle = \instrument
  poet = "Larry Morey"
  composer = "Frank Churchill"
  copyright = "© 1937 Bourne Co."
}

refrainLyricsOne = \lyricmode {
Some -- day my prince will come,
Some -- day I'll find my love,
And how thrill -- ing that mo -- ment will be,
When the prince of my dreams comes to me. __
He'll whis -- per, “I love you,”
And steal a kill or two,
Though he's far a -- way,
I'll find my love some day,
Some -- day when my dreams come true. __
}

refrainLyricsTwo = \lyricmode {
Some -- day I'll find my love,
Some -- one to call my own,
And I'll know her the mo -- ment we meet,
For my heart will start skip -- ping a beat.
Some -- day we'll day and do,
Things we've been long -- ing to,
Though she's far a -- way,
I'll find my love some -- day,
Some -- day when my dreams come true. __
}

refrainChords = \chordmode {
  bf2.:maj7 d2.:7.5+ ef2.:maj7 g2.:7.5+
  c2.:m7 g2.:7.5+ c2.:7 f2.:7

  d2.:m7 cs2.:dim7 c2.:m7 f2.:7
  d2.:m7 cs2.:dim7 c2.:7 f2.:7

  bf2.:maj7 d2.:7.5+ ef2.:maj7 g2.:7.5+
  c2.:m7 g2.:7.5+ c2.:m7 f2.:7

  bf2.:maj7 d2.:7.5+ ef2.:maj7 e2.:dim7
  bf2.:maj7/f g2.:7 c2:m7 f2:7
}

refrainKey = bf

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Jazz Waltz" 4 = 144

  \textMark \markup{ \bold \box "A1" }
  
  f2. | bf2 fs4 | a2 g4 | g2. |
  \break
  g2. | ef'2 b4 | d2 c4 | c4 d4 ef4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "B" }
  
  f4 f4 f4 | a4 a4 a4 | f2.~ | f4 d4 ef4 |
  \break
  f4 f4 f4 | a4 a4 a4 | f2.~ | f4 r4 r4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "A2" }
  
  f,2. | bf2 fs4 | a2 g4 | g2. |
  \break
  g2. | ef'2 b4 | d2 c4 | c4 d4 ef4 |
  
  \bar "||"
  \break

  \textMark \markup{ \bold \box "C" }
  
  f2 f4 | c'2 bf4 | b,4. c8 b8 c8 | a'2 g4 |
  \break
  f4 f4 f4 | f2 f4 | f2.~ | f2 r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"

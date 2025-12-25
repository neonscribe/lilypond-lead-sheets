%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

#(set-global-staff-size 18)

\header {
  title = "Are You Lonesome Tonight"
  subtitle = \instrument
  poet = ""
  composer = "Roy Turk and Lou Handman"
  copyright = \markup \small { \now " " "© 1926 Bourne, Inc." }
}

refrainLyrics = \lyricmode {
Are you lone -- some to -- night, do you miss me to -- night,
are you sor -- ry we drift -- ed a -- part? __
Does your mem -- o -- ry stray to a bright sum -- mer day,
when I kissed you and called you sweet heart? __

Do the chairs in your par -- lor seem emp -- ty and bare?
Do you gaze at your door -- step and pic -- ture me there?
Is your heart filled with pain? Shall I come back a -- gain?
Tell me, dear, are you lone -- some to -- night?

night? Tell me, dear, are you lone -- some to -- night?
}

refrainChords = \chordmode {
  s4
  
  c2. e2.:m a2.:m a2.:m
  c2. c2.:7 f2.:6 f2.:6
  g2. g2. g2.:7 g2.:7
  g2.:7 g2:sus7 g4:7.5+ c2. c2.
  
  c2.:9 c2.:9 f2.:6 f2.:6
  d2. d2. d2.:m g2.
  c2. e2.:m d2. d2.
  d2.:m g2.:7 c2.
  \chordInsideParens{ g2.:7 }
  
  e2.:m d2. d2.:m g2.:7 c2. c2.

}

refrainKey = c

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad Waltz [Elvis Presley 1960]" 4 = 77

  \partial 4 e8 g8 |
  \bar "||"

  \xTextMark \markup{ \bold \box "A" }
  
  c4 g4. c8 | b2 e,8 g8 | b4 a4. b8 | a2 e8 g8 | 
  \break
  a4 g4 a4 | g4 f4. e8 | a2.~ | a2 f8 a8 |
  \break
  c4 b4. c8 | b2 f8 g8 | b4 a4. b8 | a2 d,8 e8 |
  \break
  f4 g4 a4 | c4 b4 a4 | e2.~ | e2 g8 a8 |
  
  \sect "B"
  
  bf4 a4 g4 | c4 a4. c8 | g4 f4 e4 | f2 f8 b8 |
  \break
  c4 b4 a4 | d4 b4. d8 | a4 g4 fs4 | g2 e8 g8 |
  \break
  c4 b4. c8 | b2 c8 cs8 | e4 d4. e8 | d2 gs,8 a8 |
  \break
  c4 b4 a4 | b4 c4 d4 \textToCodaLastTime | c2. | r2. |
  
  \bar "||-|."
  
  \textCodaBreak
  
  e2.~ | e4 r4 gs,8 a8 | c4 b4 a4 | b4 c4 \caesura d4 | c2. | r2. |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

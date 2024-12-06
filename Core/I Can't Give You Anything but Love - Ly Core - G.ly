%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "I Can't Give You Anything but Love"
  subtitle = \instrument
  poet = "Dorothy Fields"
  composer = "Jimmy McHugh"
  copyright = "© 1928 Jack Mills Inc."
}

refrainLyrics = \lyricmode {
I can't give you an -- y -- thing but love, ba -- by;
That's the on -- ly thing I've plen -- ty of, ba -- by.
Dream a -- while, scheme a -- while we're sure to find __
hap -- pi -- ness and, I guess,
all those things you've al -- ways pined for.
Gee, I'd like to see you look -- ing swell, ba -- by;
Dia -- mond brace -- lets Wool -- worth does -- n't sell, ba -- by.
'Till that luck -- y day, you know damned well, ba -- by
I can't give you an -- y -- thing but love. __
}

refrainChords = \chordmode {
  g1:maj7 b2:m7 b2:dim7 a1:m7 d1:7
  g1:maj7 b2:m7 e2:m7 a1:m7 d1:7
  
  d1:m7 g1:7 c1:maj7 c1:maj7
  a1:7 a1:7 a1:m7 d1:7

  g1:maj7 b2:m7 b2:dim7 a1:m7 d1:7
  d1:m7 g1:7 c1:maj7 c1:maj7

  c1:maj7 cs1:dim7 g1:maj7/d e1:7
  a1:m7 d1:7 g1:6
  \chordOpenParen{ a2:m7 }
  \chordCloseParen{ d2:7 }
}

refrainKey = g

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 140

  \xTextMark \markup{ \bold \box "A1" }
  
  g4 fs4 e4 g4 | fs4 e4 g4 e4 | a1 | a8( as8) b2. |
  \break
  g4 fs4 e4 g4 | fs4 e4 g4 b4 | d1 | b8( bf8) a2. |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "B" }
  
  g8 gs8 a2. | a8 as8 b2. | d4 c4 b4 a4~ | a1 |
  \break
  a8 as8 b2. | b8 c8 cs2. | e4 d4 c4 b4 | d4 c4 e,4 fs4 |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "A2" }
  
  g4 fs4 e4 g4 | fs4 e4 g4 e4 | a1 | a8( as8) b2. |
  \break
  d4 c4 b4 d4 | c4 b4 d4 c4 | b1 | a4 g2. |
  
  \bar "$"
  \break

  \xTextMark \markup{ \bold \box "C" }
  
  e4 fs4 g4 fs4 | a4 g4 fs4 g4 | d'1 | fs,4 e2. |
  \break
  ds4 e4 d'4 c4 | e4 e4 b4 b4 | g1~ | g2. r4 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

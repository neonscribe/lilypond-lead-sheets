%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "The Weight, Chorus Only"
  subtitle = \instrument
  poet = ""
  composer = "J.R. Robertson"
  copyright = \markup \small { \now " " "© 1968 Dwarf Music" }
}

straightEighths = ##t

refrainLyrics = \lyricmode {
Take a load off, Fan -- ny. Take a load for free. Take a load off, Fan -- ny.
And you put the load right on me.
}

refrainLyricsVoiceTwo = \lyricmode {
Take a load off, Fan -- ny. Take a load for free. Take a load off, Fan -- ny.
And you put the load right on me.
}

refrainLyricsVoiceThree = \lyricmode {
Take a load off, Fan -- ny. Take a load for free. Take a load off, Fan -- ny.
And you put the load right on me.
}

refrainChords = \chordmode {
  a4 a4/gs d2 a4 a4/gs d2 a4 a4/gs d1 d1 d4 a4 e4/gs fs4:m a4:maj7/e d1
}

refrainKey = a

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \numericTimeSignature
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium-Slow" 4 = 72

  \sectStart "Chorus"
  
  r8 e'16 e16 e8 cs8 a8 a8 r4 |
  r8 e'16 e16 e8 a,16 cs16~ cs4 r4 | 
  r8 e16 e16 e8 cs8 a8 a8 r4 |
  r4 a4~ a4~ a8. fs16 |
  \time 3/4
  a16 fs16 a8 a16 a8 cs16~(
  cs4 | 
  \numericTimeSignature
  \time 4/4
  a4) r4 r2 |
  r1 |

  \bar "|."
}

refrainMelodyTwo = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  r8 a'16 a16 a8 e8 d8 d8 r4 | r8 a'16 a16 a8 e16 fs16~ fs4 r4 |
  r8 a16 a16 a8 e8 d8 d8 r4 | r2 d2~ |
  \time 3/4
  d8. d16 d16 b16 d8 d16 d8 cs16~ |
  \time 4/4
  cs4 r4 r2 | r1 |
}

refrainMelodyThree = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  r8 cs'16 cs16 cs8 a8 fs8 fs8 r4 | r8 cs'16 cs16 cs8 a16 fs16~( fs16 e16 d8) r4 |
  r8 cs'16 cs16 cs8 a8 fs8 fs8 r4 | r2 r4 e'4~ | 
  \time 3/4
  e8. e16 e16 e16 e8 e16 e8 fs16~ |
  \time 4/4
  fs4 r4 r2 | r1 |
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

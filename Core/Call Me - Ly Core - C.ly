%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Call Me"
  subtitle = \instrument
  poet = ""
  composer = "Tony Hatch"
  copyright = \markup \small { \now " " "© 1965 Welbeck Music Ltd." }
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  c1:maj7 c1:maj7 c1:m7 c2:m7 f2:7
  bf1:maj7 bf1:maj7 bf1:m7 bf2:m7 ef2:7
  
  af1:maj7 f1:m7 af1:maj7 f1:m7
  af1:maj7 f1:m7
  
  c1:maj7 d2:m7 g2:7
  
  c1:maj7 e2:m7 a2:7.9-
  
  d2:m7 g2:7 d2:m7 g2:7 c1:maj7 e2:m7 a2:7.9-
  d2:m7 g2:7 d2:m7 g2:7 c1:maj7 d1:m7 g1:7
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
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Bossa [Chris Montez 1965]" 4 = 136

  \sectStart "Verse"
  
  \bar ".|:"
  \repeat volta 2 {
  g4 a4 b4 c4 | d4 c8 b8~ b8 a4. | r4 g8 a8 bf8 c4 d8~ | d4 c8 bf8~ bf8 a4. |
  \break
  r4 f8 g8 a8 bf4 c8~ | c4 bf8 a8~ a8 g4. | r4 f8 g8 af8 bf4 c8~ | c4 bf4 af4 bf4 |
  
  \sect "Chorus"
  
  bf4. ef,8~ ef2 | bf'8 c8 bf8 af8~ af8 bf8 af4 | bf4. ef,8~ ef2 | bf'8 c8 bf8 af8~ af8 bf8 af4 |
  \break
  bf4. ef,8~ ef2 | bf'8 c8 bf8 af8~ af8 bf8 af4 |
  \alternative { \volta 1 {
  g1~^"Turnaround to verse" | g2._"FINE" r4 |
  } \volta 2 {
  g1~^"Turnaround to bridge" | g2 r8 g8 g8 g8 |
  } } }
  \sect "Bridge (9 bars)"
  
  d'4. e8~ e8 g,8 g8 g8 | d'4. e8~ e2 | r4 c8 c8 b8 b8 a8 a8 | g2 r8 g8 g8 g8 |
  \break
  d'4. e8~ e8 g,8 g8 g8 | d'4. e8~ e2 | r4 c8 c8 b8 b8 a8 a8 | d1~ | d2 \daCapoAlFine r2 |

  \bar "|."
  \xPageBreak
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Chorus 1 } }
   \vspace #3
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Chorus 2 } }
   \vspace #3
   \line { \large { Bridge } }
   \vspace #4
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Chorus 3 } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
    \vspace #2
    \line { \large { If you're feeling sad and lonely } }
    \line { \large { There's a service I can render } }
    \line { \large { Tell the one who loves you only } }
    \line { \large { I can be so warm and tender } }
    \vspace #1
    \line { \large { Call me don't be afraid, you can call me } }
    \line { \large { Maybe it's late, but just call me } }
    \line { \large { Tell me, and I'll be around } }
    \vspace #1
    \line { \large { When it seems your friends desert you } }
    \line { \large { There's somebody thinking of you } }
    \line { \large { I'm the one who'll never hurt you } }
    \line { \large { Maybe that's because I love you } }
    \vspace #1
    \line { \large { Call me don't be afraid, you can call me } }
    \line { \large { Maybe it's late, but just call me } }
    \line { \large { Tell me, and I'll be around } }
    \vspace #1
    \line { \large { Now, don't forget me' cause if you let me } }
    \line { \large { I will always stay by you } }
    \line { \large { You gotta trust me that's how it must be } }
    \line { \large { There's so much that I can do } }
    \vspace #1
    \line { \large { If you call, I'll be right with you } }
    \line { \large { You and I should be together } }
    \line { \large { Take this love I long to give you } }
    \line { \large { I'll be at your side forever } }
    \vspace #1
    \line { \large { Call me don't be afraid, you can call me } }
    \line { \large { Maybe it's late, but just call me } }
    \line { \large { Tell me, and I'll be around } }
   }
}

\markup { \vspace #2 }

\markup {
  \column 
  \bold
  {
    \line{ Petula Clark }
    \line{ \normal-text{ 152 BPM } }
    \vspace #1
    \line{ Chris Montez }
    \line{ \normal-text{ 136 BPM } }
    \vspace #1
    \line{ Frank Sinatra }
    \line{ \normal-text{ 100 BPM } }
  }
  \hspace #4
  \column
  {
    \line { 4 bar Ima7 vamp - Verse 1 - Chorus - Verse 2 - Chorus - Bridge - }
    \line { Solo over Verse - Chorus - Bridge - Verse 3 - Chorus - “Call Me Now!” }
    \vspace #1
    \line { 6 bar Ima7 vamp - Verse 1 - Chorus - Verse 2 - Chorus - Bridge - }
    \line { Solo over Verse - Chorus - Bridge - Verse 3 - Chorus - “Whoo!” }
    \vspace #1
    \line { 2 bar Ima7 vamp - Verse 1 - Chorus - Verse 2 - Chorus - 8 bar Bridge - }
    \line { Verse 3 - Chorus - Repeat Chorus and Fade }
  }
}
%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Help the Poor"
  subtitle = \instrument
  poet = ""
  composer = "Charlie Singleton"
  copyright = \markup \small { \now " " "© 1964 Warsing Music" }
}

refrainLyrics = \lyricmode {
_ _ _ _ _
_ _ _ _ _
_ _ _ _ _
_ _ _ _ _

Help the poor, __ won't you help poor me?
I need help __ from you, ba -- by; need it des -- p'rate -- ly. __
I need you so much, I need your care.
I need all the lov -- ing, ba -- by, you can spare. __
Help the poor; __ oh, ba -- by, help poor me. __
Say you will;
You are my in -- spi -- ra -- tion. __
You could make me be a king. __
But, if you don't come to my res -- cue,
I could -- n't ev -- er by an -- y -- thing. __
Help the poor;
I'm in trou -- ble don't you see? __
On -- ly your love can save me. __
}

refrainChords = \chordmode {
  s4
  d1:m d1:m d1:m d1:m
  
  d1:m d1:m d1:m d1:m d1:m d1:m
  a1:7 a1:7 d1:m d1:m
  g1:m g1:m d1:m a1:7 d1:m
  
  d4:m r2.

  d4:m r2.
  
  g1:m g1:m d1:m d1:m
  g1:m g1:m a1:7 a4:7 a4:7.5+ r2
  
  d4:m r2. d1:m d1:m d1:m
}

refrainKey = d

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
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Moderate Latin Feel [B.B. King & Eric Clapton 2000]" 4 = 106

  \xTextMark \markup{ \bold \box "Intro" }
  
  \partial 4 a8 c8 |
  \bar "||"
  
  d2. a8 c8 | d8. f32 d32 c8 d8 r4 a8 c8 | d2. a8 c8 | d8. f32 d32 c8 d8 r8
  
  \break

  d,8 f8 a8~ |

  \xTextMark \markup{ \bold \box "Verse" }
  
  \segnoSign
  \bar ".|:"
  \repeat volta 2 {
  a4 r4 r2 | r4 d,8 f8 g8 f4. | d2 r2 | r2 r8 d'8 d8 d8~ |
  \break
  d4 c8 a8 c4 d4 | r2 r8 c8 c8 c8 | c8 cs8( a2.) | r8 f'4.~ f8 e8 d8 f8( |
  \break
  d4) r4 r8 e8 e8 d8 | f4 r4 r8 f8 e8 e8 | d8 f8 d8 d8 bf8 e8 d8 f8 | d2 r8 d,8 f8 a8~ |
  \break
  a2 r8 d4. | a8 f8 r4 g8 f4 f8( | d2) r2 \textToCoda |
  \alternative { \volta 1 {
  r2 r8 d8 f8 a8\laissezVibrer |
  } \volta 2 {
  r1 |
  } } }
  \sect "Bridge"
  
  r8 f8 g8 g8 g8 f8 g8 a8~ | a2 r2 | r8 f8 f8 a8 a8 g8 f8 a8~ | a2 r2 |
  \break
  r8 d8 d16 d16 e8 e8 e8 d8 f8 | d2 r8 d8 e8 d8 | 
  e8 d8 e4 r8 e8 e8 f8~ | f4\bendAfter #-1 r4 r8 d,8 f8 a8\laissezVibrer \dalSegno |

  \bar "||-||"

  \textCodaBreak
  
  r8 d,8 f8 a8~ a8 a8 g8 f8 | 
  \bar "||"
  f8( d4.) r2 | r8 g8 g8 f8 a8 f8 g4 | f8( d4.) r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \vspace #2
  \column {
    \line { \large { Say you will; say you'll help me on. } } 
    \line { \large { I can't make it no further in this world alone. } } 
    \line { \large { Baby, I'm beggin', with tears in my eyes, } } 
    \line { \large { For your lovin'; don't you realize? } }
    \line { \large { I need help; oh, baby, help poor me. } }
    }
  \column { \hspace #5 }
  \column {
    \line { \large { Help the poor; baby, help poor me. } } 
    \line { \large { Have a heart, won't you, baby; listen to my plea. } } 
    \line { \large { I lost my courage till I found you. } } 
    \line { \large { You got what it takes, baby, to pull me through. } } 
    \line { \large { Help the poor; oh, baby, won't you help poor me. } } 
  }
}
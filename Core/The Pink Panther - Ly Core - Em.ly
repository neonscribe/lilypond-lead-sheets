%% -*- Mode: LilyPond -*-

songID = "2026-09-24T03:04:19.279125Z"

\include "../Include/lead-sheets.ily"

headerTitle = "The Pink Panther"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Henry Mancini"
headerCopyright = "© 1964 Northridge Music Co."

straightEighths = ##t

refrainChords = \chordmode {
  s2
  
  s1 s1 s1 s1 s1 s1 s1 s1
  
  e1:m e1:m c1:7 c1:7 e1:m e1:m f1:7 f1:7
  e1:m e1:m c1:7 c1:7 e4:m r4*7 e1:m e1:m
  c1 c1 e1:m e1:m
  
  e1:m e1:m c1 c1 e1:m e2.:m e4:m7+.9
}

refrainKey = e

whatKey = #(or whatKey refrainKey)
isMinor = ##t

refrainRightHand = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef "bass"
  \tempoFour "Medium [Henry Mancini 1963]" 116

  \partial 2 r8. <cs, gs'>16-> <d a'>8 r16 <ds as'>16->  |
  
  \sectNoBreak "Intro"
  
  <e b'>1~ | <e b'>2~ <e b'>8
  r16 <cs gs'>16-> <d a'>8 r16 <ds as'>16-> | <e b'>1~ | <e b'>2~ <e b'>8
  r16 <ef bf'>16-> <d a'>8 r16 <df af'>16-> | <c g'>1~ | <c g'>2~ <c g'>8
  r16 <cs gs'>16-> <d a'>8 r16 <ds as'>16-> | <e b'>1~ | <e b'>2~ <e b'>8
  r8 r8. ds16-> |
  
  \sectSegno "Head"
  
  e4-. r8. fs16-> g4-. r8. ds16-> | e8.-. fs16-> g8.-. c16-> b8.-. e,16-> g8.-. b16 |
  bf2~ \tuplet 3/2 { bf8 a8 g8 } \tuplet 3/2 { e8 d8 e8~ } | e2 r4 r8. ds16 |
  
  e4 r8. fs16 g4 r8. ds16 | e8. fs16 g8. c16 b8. g16 b8. e16 | ef1~ | ef2. r8. ds,16 |
  
  e4-. r8. fs16-> g4-. r8. ds16-> | e8. fs16 g8. c16 b8. e,16 g8. b16 |
  bf2~ \tuplet 3/2 { bf8 a8 g8 } \tuplet 3/2 { e8 d8 e8~ } | e2 r2 |

  r4 e'8. d16 b8. a16 g8. e16 | bf'16-> a8. bf16-> a8. bf16-> a8. bf16-> a8. \textToCodaLastTime |
  \tuplet 3/2 { g8-> e8 d8 } e8 e8~-> e2~ | e2 r2 |
  \tuplet 3/2 { g8-> e8 d8 } e8 e8~-> e2~ | e2 r2 |
  \tuplet 3/2 { g8-> e8 d8 } e8 e8~-> e2~ | e2 r4 r8. ds16 \dalSegno |
  
  \textCodaBreak
  
  \tuplet 3/2 { g8-> e8 d8 } e8 e8~-> e2~ | e2 r2 |
  \tuplet 3/2 { g8-> e8 d8 } e8 e8~-> e2~ | e2 r2 |
  \tuplet 3/2 { g8-> e8 d8 } e8 e8~-> e2 | r2 r4 <b d fs a>4\fermata |
  

  \bar "|."
}

refrainLeftHand = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef "bass"

  \partial 2 r8. <cs,, gs'>16-> <d a'>8 r16 <ds as'>16->  |
  
  <e b'>1~ | <e b'>2~ <e b'>8
  r16 <cs gs'>16-> <d a'>8 r16 <ds as'>16-> | <e b'>1~ | <e b'>2~ <e b'>8
  r16 <ef bf'>16-> <d a'>8 r16 <df af'>16-> | <c g'>1~ | <c g'>2~ <c g'>8
  r16 <cs gs'>16-> <d a'>8 r16 <ds as'>16-> | <e b'>1~ | <e b'>2~ <e b'>8
  r16 <cs gs'>16-> <d a'>8 r16 <ds as'>16-> |
  
  <<
    { \voiceOne
      <e b'>1 |
    }
    { \xVoiceTwo {
      r2 b4 r4 |
    }
    }
  >>
  \oneVoice
  
  <e b'>2~ <e b'>8. <ef bf'>16 <d a'>8. <df af'>16 |
  
  <<
    { \voiceOne
      <c g'>1 |
    }
    { \xVoiceTwo {
      r2 g4 r4 |
    }
    }
  >>
  \oneVoice
  
  <c g'>2~ <c g'>8. <cs gs'>16 <d a'>8. <ds as'>16 |

  <<
    { \voiceOne
      <e b'>1 |
    }
    { \xVoiceTwo {
      r2 b4 r4 |
    }
    }
  >>
  \oneVoice
  
  <e b'>2~ <e b'>8. <d a'>16 <ds as'>8. <e b'>16 |
  
  <<
    { \voiceOne
      <f c'>1 |
    }
    { \xVoiceTwo {
      r2 c4 r4 |
    }
    }
  >>
  \oneVoice
  
  <f c'>2~ <f c'>8. <cs gs'>16 <d a'>8. <ds as'>16 |

  <<
    { \voiceOne
      <e b'>1 |
    }
    { \xVoiceTwo {
      r2 b4 r4 |
    }
    }
  >>
  \oneVoice
  
  <e b'>2~ <e b'>8. <ef bf'>16 <d a'>8. <df af'>16 |
  
  <<
    { \voiceOne
      <c g'>1 |
    }
    { \xVoiceTwo {
      r2 g4 r4 |
    }
    }
  >>
  \oneVoice
  
  <c g'>2~ <c g'>8. <cs gs'>16 <d a'>8. <ds as'>16 |

  <e b'>8 r8 r4 r2 | r1 |
  
  <<
    { \voiceOne
      <e b'>1 |
    }
    { \xVoiceTwo {
      r2 b4 r4 |
    }
    }
  >>
  \oneVoice
  
  <e b'>2~ <e b'>8. <ef bf'>16 <d a'>8. <df af'>16 |
  
  <<
    { \voiceOne
      <c g'>1 |
    }
    { \xVoiceTwo {
      r2 g4 r4 |
    }
    }
  >>
  \oneVoice
  
  <c g'>2~ <c g'>8. <cs gs'>16 <d a'>8. <ds as'>16 |

  <<
    { \voiceOne
      <e b'>1 |
    }
    { \xVoiceTwo {
      r2 b4 r4 |
    }
    }
  >>
  \oneVoice
  
  <e b'>2~ <e b'>8. <cs gs'>16 <d a'>8. <ds as'>16 |

  <<
    { \voiceOne
      <e b'>1 |
    }
    { \xVoiceTwo {
      r2 b4 r4 |
    }
    }
  >>
  \oneVoice
  
  <e b'>2~ <e b'>8. <ef bf'>16 <d a'>8. <df af'>16 |
  
  <<
    { \voiceOne
      <c g'>1 |
    }
    { \xVoiceTwo {
      r2 g4 r4 |
    }
    }
  >>
  \oneVoice
  
  <c g'>2~ <c g'>8. <cs gs'>16 <d a'>8. <ds as'>16 |

  <<
    { \voiceOne
      <e b'>1 |
    }
    { \xVoiceTwo {
      r2 b4 r4 |
    }
    }
  >>
  \oneVoice
  
  <e b'>4 b4-. e,4-. <e'' b' e>-^\fermata
}

\include "../Include/grandstaff.ily"

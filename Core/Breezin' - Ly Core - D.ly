%% -*- Mode: LilyPond -*-

songID = "2026-08-26T14:16:26.476703Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Breezin'"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Bobby Womack"
headerCopyright = "© 1971 ABKCO Music, Inc."

refrainChords = \chordmode {
  d1:maj9 b1:m7 e1:m9 g1/a
  d1:maj9 b1:m7 e1:m9 g1/a
  d1:maj9 b1:m7 e1:m9 g1/a
  d1:maj9 b1:m7 e1:m9 g1/a

  d1:maj9 b1:m7 e1:m9 g1/a
  d1:maj9 b1:m7 e1:m9 g1/a
  d1:maj9 b1:m7 e1:m9 g1/a
  d1:maj9 b1:m7 e1:m9 g1/a

  d1:maj9 b1:m7 e1:m9 g1/a
  d1:maj9 b1:m7 e1:m9 g1/a
  d1:maj9 b1:m7 e1:m9 g1/a
  d1:maj9 b1:m7 e1:m9 g1/a

  d1:maj9 b1:m7 e1:m9 g1/a
  d1:maj9 b1:m7 e1:m9 g1/a
  d1:maj9 b1:m7 e1:m9 g1/a
  d1:maj9 b1:m7 e1:m9 g1/a

  d1:maj9 b1:m7 e1:m9 g1/a
  d1:maj9 b1:m7 e1:m9 g1/a
  d1:maj9 b1:m7 e1:m9 g1/a
  d1:maj9 b1:m7 e1:m9 g1/a

  d1:maj9 b1:m7 e1:m9 g1/a
}

refrainKey = d

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium Funk [George Benson 1976]" 160

  \sectNoBar "Intro"
  
  <cs' e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8  <cs e>8 | r8 <b d>4.~ <b d>2 |
  <d fs>8 <d fs>8 <d fs>8 <d fs>8 <d fs>8 <d fs>8 <d fs>8  <d fs>8 | r8 <cs e>4.~ <cs e>2 |
  
  <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8  <cs e>8 | r8 <b d>4.~ <b d>2 |
  <d fs>8 <d fs>8 <d fs>8 <d fs>8 <d fs>8 <d fs>8 <d fs>8  <d fs>8 | r8 <cs e>4.~ <cs e>2 |
  
  <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8  <cs e>8 | r8 <b d>4.~ <b d>2 |
  <d fs>8 <d fs>8 <d fs>8 <d fs>8 <d fs>8 <d fs>8 <d fs>8  <d fs>8 | r8 <cs e>4.~ <cs e>2 |
  
  <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8  <cs e>8 | r8 <b d>4.~ <b d>2 |
  <d fs>8 <d fs>8 <d fs>8 <d fs>8 <d fs>8 <d fs>8 <d fs>8  <d fs>8 | r8 <cs e>4.~ <cs e>2 |
  
  <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8  <cs e>8 | r8 <b d>4.~ <b d>2 |
  <d fs>4. <b d>8~ <b d>4 <d fs>4 | r8 a,8 b8 cs8 d8 e8 fs8 g8 |
  
  \sectNoBar "A"
  
  \bar ".|:-||"
  \repeat volta 2 {

  \acciaccatura { a16 b16 } a1 | r1 | r2 \acciaccatura { a16 b16 } a2~ |
  a4. \acciaccatura e8 fs8 r8 d8 r8 b8 | a2 r2 | r1 |
  \acciaccatura { a16 b16 } a4. \acciaccatura { a16 b16 } a8~ a4 \acciaccatura { a16 b16 } a4~ |
  a4 b8 cs8 d8 e8 fs8 g8 |
  \break
  \acciaccatura { a16 b16 } a1 | r2 r8 \acciaccatura { a16 b16 } a4.~ | a2 r2 |
  r8 b8 r8 \acciaccatura e,8 fs8 r8 d8 r8 b8 | a2 r2 | r1 | r1 |
  r4 b8 cs8 d8 e8 fs8 g8 |
  \break
  \acciaccatura { a16 b16 } a2. \acciaccatura { a16 b16 } a4~ |
  a8 \acciaccatura { a16 b16 } a4.~ \tuplet 3/2 { a4 d4 cs4 } |
  \acciaccatura { a16 b16 } a1~ | a4. \acciaccatura e8 fs8 r8 d8 r8 b8 |
  a2 r2 | r2 r8 <cs e>8( <b d>8) a8 | <cs e>8( <b d>8) <cs e>8( <b d>8~ <b d>2) |
  r4 b8 cs8 d8 e8 fs8 g8 | 
  \acciaccatura { a16 b16 } a4. \acciaccatura { a16 b16 } a8~ a4 \acciaccatura { a16 b16 } a4~ | a2 r2 |
  r8 fs8 g8 b8 a2~ | a4. \acciaccatura e8 fs8 r8 d8 r8 b8 | d2 r2 |
  r1 | r1 | r2 a8 b8 d8 fs8 |
  \bar "||"
  
  \xxPageBreak

  \sectNoBar "B"
  
  r8 d8 r8 b8 d8 d8 b4 | r2 a8 b8 d8 fs8 | r8 d8 r8 d8 fs4 d'4~ | d4 r4 a,8 b8 d8 fs8 |
  \break
  r8 d8 r8 b8 d8 d8 b4 | r2 a8 b8 d8 fs8 | r8 d8 r8 b8 d4 b4 | r2 r8 a8 b8 fs'8 |
  \break
  r8 d8 r8 b8 d8 d8 b4 | r2 a8 b8 d8 f8( | e8) d8 r8 b8 fs'4 a4 | r4 g8 f8 fs8 a,8 b8 fs'8 |
  \break
  r8 d8 r8 b8 d8 d8 b4 | r2 a8 b8 d8 f8( | e8) d8 r8 d8 fs4 r4 | g4 b,8 cs8 d8 e8 fs8 g8 |

  a1 | r1 | r1 | r4 r8 \acciaccatura e8 fs8 r8 d8 r8 b8 |
  \break
  a2 r2 | r2 a8 b8 fs8 g8 | a4. a8~ a4 a4 | r8 a8 b8 cs8 d8 e8 fs8 g8 |
  \break
  \acciaccatura { a16 b16 } a4. \acciaccatura { a16 b16 } a8~ a4 \acciaccatura { a16 b16 } a4~ |
  a8 \acciaccatura { a16 b16 } a4.~ a8 d4 cs8 |
  \acciaccatura { a16 b16 } a4. \acciaccatura { a16 b16 } a8~ a4 \acciaccatura { a16 b16 } a4~ |
  a4. \acciaccatura e8 fs8 r8 d8 r8 b8 |
  \break
  <<
    { \voiceOne
      d1 |
    }
    \xVoiceTwo { <cs' e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8 <cs e>8  <cs e>8 | }
  >>
  \oneVoice
  r8 <b d>4.~ <b d>2 |
  <d fs>8 <d fs>8 <d fs>8 <d fs>8 <d fs>8 <d fs>8 <d fs>8  <d fs>8 | r8 <cs e>4.~ <cs e>2 |
  }
  \bar ":|."
}

\include "../Include/refrainonly.ily"

%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Like a Lover (O Cantador)"
  subtitle = \instrument
  poet = "Nelson Motta/Alan and Marilyn Bergman"
  composer = "Dori Caymmi"
  copyright = "© 1968 Bema Music, Inc."
}

bossaRhythm = ##t

refrainLyricsOne = \lyricmode {
Like a lov -- er the morn -- ing sun
slow -- ly ris -- es and kiss -- es you a -- wake.
Your smile is soft and drow -- sy as you let it play up -- on your face. __
Oh, how I dream I might be like the morn -- ing sun to you. __

How I en -- vy a cup that knows your lips; __ let it be me, __ my love.
And a ta -- ble that feels your fin -- ger -- tips, __
let it be me, __ let me be your love. __
Bring an end to the end -- less days and nights __ with -- out you. __

Like a lov -- er the vel -- vet moon
shares your pil -- low and watch -- es while you sleep. __
Its light ar -- rives on tip -- toe,
gent -- ly tak -- ing you in its em -- brace. __
Oh, how I dream I might be like the vel -- vet moon to you. __
}

refrainLyricsTwo = \lyricmode {
Like a lov -- er the riv -- er wind
sighs and rip -- ples its fin -- gers thru your hair.
Up -- on your cheek it lin gers, nev -- er hav -- ing known a sweet -- er place. __
Oh, how I dream I might be like the riv -- er wind to you.
}

refrainChords = \chordmode {
  d1:maj7 a1:sus7 d1:maj7 e1/d
  cs2:m7 fs2:m7 b2:sus13 b2:9 e1:maj7 a2:13 a2:7.5+ 
  g1:maj7 a1/g d1:maj7 a1:sus7 
  d1:maj7 a1:sus7
  
  d2:maj7 g2:m6/d d1:maj7 e1/d e1/d
  cs2:m7 cs2:7.9- fs1:m7 gs1:m7.5- cs2:13 cs2:7.5+ 
  fs1:m7 b4.:m7 a4.:m7 e4*5:1.3.5.9/gs a1:sus7
  a1:sus7 d1:maj7 a1:sus7 d1:maj7
  e1/d cs2:m7 fs2:m7 b2:sus13 b2:9 a1:maj7
  a2:13 a2:7.5+ g1:maj7 a1/g d1:maj7
  a1:sus7 d1:maj7 a1:sus7
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Bossa Nova" 4 = 124

  \xTextMark \markup{ \bold \box "A1,A2" }
  
  \bar ".|:"
  \repeat volta 2 {
  r4 d8 e8 fs8 fs4 a8 | g4 fs8 e8~ e2 | r4 d8 e8 fs8 fs4 a8 |
  gs4 gs8 fs8~ fs8 fs4 e8~ |
  e2 r4 a4 | gs4 gs8 fs8~ fs8 fs4 gs8~ | gs8 e8 b8 e8 gs8 b8 a4~ |
  a4 a8 a8~ a8 a4 d8~ | d1 |
  cs2 b8 a4 fs8~ | fs4 d8 e8 fs8 fs4 a8 | g4 fs8 e8~ e4 d8 d8~ | d1 | r1 |
  }

  \break

  \xTextMark \markup{ \bold \box "B" }
  
  r4 fs8 e8 g8 g4 fs8 | e4 e8 d8~ d8 cs4 b8~ | b4 gs'8 fs8 a4 gs4~ |
  gs2~ gs8 e4 cs8~ | cs4 b'8 a8 cs8 cs4 b8 |
  a4 a8 b8~ b8 a8 b4~ | b4 cs8 b8 d4 cs4~ |
  \tuplet 3/2 { cs4 cs4 b4 } d8 cs4 a8~ | a4 a8 gs8 \tuplet 3/2 { b4 b4 a4 } |
  d,4 d8 e8~ e8 d8 e4~ |
  e4. d8 fs4 e4~ | e1~ | e1 |
  
  
  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A3" }
  
  r4 d8 e8 fs8 fs4 a8 | g4 fs8 e8~ e2 | r4 d8 e8 fs8 fs4 a8 |
  gs4 gs8 fs8~ fs8 fs4 e8~ |
  e2 r4 a4 | gs4 gs8 fs8~ fs8 fs4 gs8~ | gs8 e8 b8 e8 gs8 b8 a4~ |
  a4 a8 a8~ a8 a4 d8~ | d1 |
  cs2 b8 a4 fs8~ | fs4 d8 e8 fs8 fs4 a8 | g4 fs8 e8~ e4 d8 d8~ | d1 | r1 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"

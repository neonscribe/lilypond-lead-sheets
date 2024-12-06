%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Winter Wonderland"
  subtitle = \instrument
  poet = "Dick Smith"
  composer = "Felix Bernard"
  copyright = "© 1934 Bregman, Vocco and Conn, Inc."
}

refrainLyricsOne = \lyricmode {
  Sleigh bells ring, are you lis -- t'nin'?
  In the lane, snow is glis -- t'nin'.
  A beau -- ti -- ful sight, we're hap -- py to -- night,
  walk -- in' in a win -- ter won -- der -- land!
  
  Gone a
  
  land!

  In the mead -- ow we can build a snow -- man,
  then pre -- tend that he is Par -- son Brown;
  We'll say are you mar -- ried we'll say No, man;
  But you can do the job when you're in town!
  
  Lat -- er on, we'll con -- spi -- re, as we dream by the fi -- re,
  to face un -- a -- fraid, the plans that we made,
  
  walk -- in' in a win -- ter won -- der -- land!
  
  land!
}

refrainLyricsTwo = \lyricmode {
  _ _
  way is the blue -- bird, here to stay is a new bird;
  He sings a love song, as we go a -- long.
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  and pre -- tend that he's a cir -- cus clown;
  We'll have lots of fun with Mis -- ter Snow -- man,
  un -- til the oth -- er kid -- dies knock 'im down!
  
  When it snows, ain't it thrill -- in', 
  tho' your nose gets a chill -- in'?
  We'll frol -- ic and play the Es -- ki -- mo way,
}

refrainChords = \chordmode {
  s4
  ef2:maj9 af2:13 g2:m7 c2:9 f1:m7 bf1:7
  a2:m7 d2:9 g2:m7 c2:9.5+ f2:7 bf2:9 ef4:6 c4:7.9+.5+ f4:m7 bf4:13
  
  ef1:13

  g2:maj7 a2:m7/d g1:maj7 g2:maj7 a2:m7/d g1:maj7
  bf2:maj7 c2:m7/f bf1:maj7 c2:7 f4:7 b4:9.5- bf2:sus9 bf2:7
  
  ef2:maj9 af2:13 g2:m7 c2:9 f1:m7 bf1:7
  a2:m7 d2:9 g2:m7 c2:9.5+ f2:7 bf2:9
  
  ef2:6

  \chordOpenParen{ f4:m7 }
  \chordCloseParen{ bf4:7 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Easy Swing" 4 = 130
  
  \partial 4 bf8 bf8 |
  
  \repeat volta 2 {
    
    bf2. bf8 bf8 | g4 bf2 bf8 bf8 | bf2. bf8 bf8 | af4 bf2 r8 bf8 |
    d8 d8 d8 c8~ c4. c8 | bf8 bf8 bf8 af8~ af2 |
    g8 g8 g8 g8 f8 f8 f8 f8 |
  } \alternative {{
    ef2. bf'8 bf8 |
    } {
      ef2. r4 |
    }}

  \break
  \bar ".|:-||"
  \repeat volta 2 {
    d,8 d8 b'8 b8 e,8 e8 c'8 c8 | b4 g2. |
    d8 d8 b'8 b8 e,8 e8 c'8 c8 | b2. r4 |
    f8 f8 d'8 d8 g,8 g8 ef'8 ef8 | d4 bf2 bf4 |
    d8 d8 g,8 g8 c8 c8 f,8 f8 | bf2. bf 8 bf8 |
    \bar "$"
    \break

    bf2. bf8 bf8 | g4 bf2 bf8 bf8 | bf2. bf8 bf8 | af4 bf2 r8 bf8 |
    d8 d8 d8 c8~ c4. c8 | bf8 bf8 bf8 af8~ af2 |
    g8 g8 g8 g8 f8 f8 f8 f8 |
    ef2. r4 |
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain-two-verses.ily"

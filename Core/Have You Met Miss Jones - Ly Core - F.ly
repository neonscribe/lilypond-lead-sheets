%% -*- Mode: LilyPond -*-

% #(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

\header {
  title = "Have You Met Miss Jones"
  subtitle = \instrument
  poet = "Lorenz Hart"
  composer = "Richard Rodgers"
  copyright = \markup \small { \now " " "© 1937 Chappell & Co." }
}

refrainObjectGenderFemaleLyrics = \lyricmode {
  Have you met Miss Jones? __ Some -- one said as we shook hands. __
  She was just Miss Jones __ to me. __
  
  Then I said Miss Jones, __ You're a girl who un -- der -- stands, __
  I'm a man who must __ be free.
  And all at once I lost my breath, And all at once was scared to death,
  And all at once __ I owned the earth and sky. __
  
  Now I've met Miss Jones, __ And we'll go on meet -- ing till we die, __
  Miss Jones and I. __
}

refrainObjectGenderMaleLyrics = \lyricmode {
  Have you met Sir Jones? __ Some -- one said as we shook hands. __
  He was just Sir Jones __ to me. __
  
  Then I said Sir Jones, __ You're a man who un -- der -- stands, __
  I'm a girl who must __ be free.
  And all at once I lost my breath, And all at once was scared to death,
  And all at once __ I owned the earth and sky. __
  
  Now I've met Sir Jones, __ And we'll go on meet -- ing till we die, __
  Sir Jones and I. __
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  f1:maj7 fs1:dim7 g1:m7 c1:7 a1:m7 d1:m7 g1:m7 c1:7
  f1:maj7 fs1:dim7 g1:m7 c1:7 a1:m7 d1:m7 c1:m7 f1:7
  bf1:maj7 af2:m7 df2:7 gf1:maj7 e2:m7 a2:7
  d1:maj7 af2:m7 df2:7 gf1:maj7 g2:m7 c2:7
  f1:maj7 fs1:dim7 g1:m7 c2:7 bf2:7 a2:m7 d2:7 g2:m7 c2:7 f1:maj7
  \chordOpenParen{ g2:m7 }
  \chordCloseParen{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Swing [Stan Getz 1953]" 4 = 210

  \xTextMark \markup{ \bold \box "A1" }
  
  a4. d,8 c8 d4 c8~ | c1 | r8 d4 e8 f8 g4 a8~ | a8 bf4 c8~ c2 |
  \break
  d4. g,8 f8 g4 f8~ | f2. a4 | bf1~ | bf1 |
  
  \sect "A2"
  
  a4. d,8 c8 d4 c8~ | c1 | r8 d4 e8 f8 g4 a8~ | a8 bf4 c8~ c2 |
  \break
  d4. g,8 f8 g4 f8~ | f2. a4 | c1 | r8 d4. d4 d4 |
  
  \sect "B"
  
  c4. bf8 f8 g4 af8~ | af8 af4. af4 af4 | af4. gf8 df4 ef4 | e4. e8 e8 e4 e8~ |
  \break
  e8 d4. fs4 a4 | df2 df4. bf8~ | bf1~ | bf1 |
  
  \sect "A3"

  a4. d,8 c8 d4 c8~ | c1 | r8 d4 e8 f8 g4 a8~ | a8 bf4. c8 d4 e8~ |
  \break
  e1~ | e8 d4. a4 g8 f8~ | f1~ | f4 r4 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

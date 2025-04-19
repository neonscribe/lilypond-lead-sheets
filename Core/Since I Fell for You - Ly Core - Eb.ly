%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Since I Fell for You"
  subtitle = \instrument
  poet = ""
  composer = "Buddy Johnson"
  copyright = \markup \small "© 1945 Warner Bros Inc."
}

refrainLyrics = \lyricmode {
When you just give love and nev -- er get love, you'd bet -- ter let love __ de -- part. __
I know it's so, and yet I know, __ I can't get you out of my heart. __

You __ made me leave my hap -- py home, you took my love and now you're gone since I fell for you. __

Love __ brings such mis -- er -- y and pain. I know I'll nev -- er be __ the same since I fell for you. __

It's too bad, __ it's too sad, __ but I'm in love with __ you. __
You love me, __ then snub me. __ Oh, what can I do? __ I'm still in love with you.

I __ guess I'll nev -- er see the light. I get the blues most ev -- 'ry night since I __ fell for you.
}

refrainChords = \chordmode {
  ef2:maj7 c2:m7 f2:m7 bf2:9 ef2:maj7 c2:m7 f2:m7 bf2:9
  bf2:m7 ef2:13 af2:maj9 df2:9 cf1:9 bf2:sus9 bf2:9
  
  ef2:maj7 c2:m7 f2:m7 bf2:7.9+.5+ ef2:maj7 c2:m7 f2:m7 bf4:9 \chordInsideParens{ bff4:9 }
  af2:9 gf2:9 f2:7 bf2:sus9 g2:7.5+ c2:7.9- f4:7 \chordSlash 1 bf4:sus9 \chordInsideParens{ ff4:9 }

  ef2:maj7 c2:m7 f2:m7 bf2:7.9+.5+ ef2:maj7 c2:m7 f2:m7 bf4:9 \chordInsideParens{ bff4:9 }
  af2:9 gf2:9 f2:7 bf2:sus9 ef4:6 ef4:7/g af4:7 a4:dim7 ef4:6/bf \chordSlash 1 bf4:m7 ef4:7
  
  af1:9 df1:9 ef1:7 bf2:m7 ef2:7
  af1:9 df1:9 ef2:6 c2:7.5+ f2:m7 bf2:7

  ef2:maj7 c2:m7 f2:m7 bf2:7.9+.5+ ef2:maj7 c2:m7 f2:m7 bf4:9 \chordInsideParens{ bff4:9 }
  af2:9 gf2:9 f2:7 bf2:sus9 ef2:6
  \chordOpenParen{ c2:7.9+.5+ }
  f2:m7
  \chordCloseParen{ bf2:sus9 }
}

refrainKey = ef

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Bluesy Ballad [Lenny Welch 1963]" 4 = 62

  \xTextMark "Verse"
  
  r8 bf,8 c8 ef8 f8 f4. | r8 bf,8 c8 ef8 f8 f4. | r8 bf,8 c8 ef8 f8 f4.~ | f4 ef8 bf'8~ bf2 |
  \break
  r8 bf8 c8 bf8 c4. bf8 | g4 ef8 f8~ f4. ef8 | gf4 gf8 ef8 gf8 ef8 gf8 f8~ | f1 |
  
  \xTextMark "Refrain"

  \sect "A1"
  
  bf1~ | bf4 af8 bf8 df8 bf8 \tuplet 3/2 { df8( bf8) af8 } |
  bf1 | r8 ef,8 gf8 af8 bf8 af8 \tuplet 3/2 { gf8( f8) ef8 } |
  \break
  ef1 | r4 c8 ef8~ ef8 f4 ef8 | g1~ | g2 r2 |
  \bar "||"
  
  \xPageBreak
  
  \sectNoBarNoBreak "A2"
  
  bf1~ | bf4 af8 bf8 df8 bf8 \tuplet 3/2 { df8( bf8) af8 } |
  bf1 | r8 ef,8 gf8 af8 bf8 af8 \tuplet 3/2 { gf8( f8) ef8 } |
  \break
  ef1 | r4 c8 ef8~ ef8 f4 ef8 | g1~ | g2. r8 ef8 |
  
  \sect "B"
  
  gf8 af4.~ af4 r8 ef8 | gf8 af4.~ af4 r8 ef8 | bf'4 af4 gf4 \tuplet 3/2 { ef8( c8) bf8~ } | bf2. r8 ef8 |
  \break
  gf8 af4.~ af4 r8 ef8 | gf8 af4.~ af4 r8 ef8 | g8 bf8 c8 bf8~ bf4. ef,8 | g8 bf8 c8 g8 bf2 |
  
  \sect "A3"

  bf1~ | bf4 af8 bf8 df8 bf8 \tuplet 3/2 { df8( bf8) af8 } |
  bf1 | r8 ef,8 gf8 af8 bf8 af8 \tuplet 3/2 { gf8( f8) ef8 } |
  \break
  ef1 | r4 c8 ef8~ ef8 f4 ef8 | g1 | r1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

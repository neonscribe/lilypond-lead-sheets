%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Sweet and Lovely"
  subtitle = \instrument
  poet = ""
  composer = "Gus Arnheim, Harry Tobias and Jules Lemare"
  copyright = \markup \small "© 1931 Metro-Goldwyn-Mayer Corp."
}

refrainObjectGenderFemaleLyrics = \lyricmode {
Sweet and love -- ly. Sweet -- er than the ros -- es in May. __
Sweet and love -- ly. Heav -- en must have sent her my way. __
Skies a -- bove me nev -- er were as blue as her eyes, __
and she loves me, who would want a sweet -- er sur -- prise? __
When she nest -- les in my arms so ten -- der -- ly __
there's a thrill that words can -- not ex -- press.
In my heart a song of love is taunt -- ing me, __ mel -- o -- dy, haunt -- ing me.
Sweet and love -- ly. Sweet -- er than the ros -- es in May. __
and she loves me, there is no -- thing more I can say. __
}

refrainObjectGenderMaleLyrics = \lyricmode {
Sweet and love -- ly. Sweet -- er than the ros -- es in May. __
Sweet and love -- ly. Heav -- en must have sent him my way. __
Skies a -- bove me nev -- er were as blue as his eyes, __
and he loves me, who would want a sweet -- er sur -- prise? __
When he nest -- les in my arms so ten -- der -- ly __
there's a thrill that words can -- not ex -- press.
In my heart a song of love is taunt -- ing me, __ mel -- o -- dy, haunt -- ing me.
Sweet and love -- ly. Sweet -- er than the ros -- es in May. __
and he loves me, there is no -- thing more I can say. __
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  refrainObjectGenderMaleLyrics
  refrainObjectGenderFemaleLyrics)

refrainChords = \chordmode {
  g1:m7 c1:7 g1:m7 c1:7
  f1:7 bf2:maj7 ef2:9 c2:maj7 g2:7 c1:6

  g1:m7 c1:7 g1:m7 c1:7
  f1:7 bf2:maj7 ef2:9 c2:maj7 g2:7 c1:6

  f2:m7 bf2:7 c1:maj7 f2:m7 bf2:7 c1:maj7
  af2:m7 df2:7 ef1:maj7 af1:7 g1:7

  g1:m7 c1:7 g1:m7 c1:7
  f1:7 bf2:maj7 ef2:9 c2:maj7 g2:7 c1:6
}

refrainKey = c

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Swing" 4 = 100

  \xTextMark \markup{ \bold \box "A1" }
  
  c'2. d4 | d4 g,2. | c8 c8 c8 c8 c8 cs8 d8 g,8~ | g1 |
  \break
  a2. c4 | c4 f,2. | b,8 c8 e8 g8 gs8 a8 b,8 c8~ | c1 |
  
  \sect "A2"
  
  c'2. d4 | d4 g,2. | c8 c8 c8 c8 c8 cs8 d8 g,8~ | g1 |
  \break
  a2. c4 | c4 f,2. | b,8 c8 e8 g8 gs8 a8 b,8 c8~ | c1 |
  
  \sect "B"
  
  c8 af'8 af8 g8 g8 f8 f8 c8 | e16 f16 g8~ g2. | c,8 af'8 af8 g8 g8 f8 f8 e8 | g1 |
  \break
  ef8 cf'8 cf8 bf8 bf8 af8 af8 ef8 | g16 af16 bf8~ bf2. | gf8 af8 bf2. | g8 a8 b2. |
  
  \sect "A3"

  c2. d4 | d4 g,2. | c8 c8 c8 c8 c8 cs8 d8 g,8~ | g1 |
  \break
  a2. c4 | c4 f,2. | b,8 c8 e8 g8 gs8 a8 b,8 c8~ | c1 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

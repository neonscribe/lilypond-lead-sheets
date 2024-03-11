%% -*- Mode: LilyPond -*-

#(set-global-staff-size 18)

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 16) #}
)

\header {
  title = "Destination Moon"
  subtitle = \instrument
  poet = "Roy Alfred"
  composer = "Marvin Fisher"
  copyright = "© 1951 Fred Fisher Music Co., Inc."
}

verseLyrics = \lyricmode {
There once was a time when the col -- or -- ful thing to do, __
Was to call for a date on a bi -- cy -- cle built for two. __
But cars and trains and e -- ven planes __ all have had their day,
Now the time is due, to call for you, In the mod -- ern a -- tom -- ic way.
}

verseChords = \chordmode {
  f4:7.5-
  
  bf2 af2 gf2 f4 f4:7.5- bf2 g2:m c2:m7 f2:9
  bf2 af2 gf2 f4 f4:7.5- bf2:9 f2:m7
  f2:m7 bf2:9 ef1 ef2:m7 ef2:m6 bf2 d2:7
  g1:m g2:m d2:aug g2:m7 c2:7 f2:9 fs2:9.5- f2.:9

}

verseKey = bf

verseMelody = \relative f' {
  \time 2/2
  \key \verseKey \major
  \clef \whatClef
  
  \mark \markup{ "Verse" }
  
  \partial 4 f4 |
  \bar "||"
  
  bf4 f8 g8 af4 ef8 f8 | gf8 df8 ef4 f4 f8 d8~ | d1~ | d2. f8 g8 |
  bf4 f8 g8 af4 ef8 f8 | gf8 df8 ef4 f4 f8 g8~ | g1~ | g2 r4 bf4 |
  g4 bf4 c4 bf4 | r8 gf8 bf8 c8~ c2 | f,4 bf8 c4. d8 bf8~ |
  bf2. bf8 c8 | d4 bf4 bf4. bf8 | bf4 g8 g4. g8 a8 |
  \tuplet 3/2 { c4 c4 c4 } c8 c4 c8~ | \partial 2. c2. |
 
  \bar "||"
  \pageBreak
}

refrainLyrics = \lyricmode {
Come and take a trip in my rock -- et ship,
We'll have a love -- ly aft -- er -- noon, __
Kiss the world good -- bye and a -- way we fly,
Des -- ti -- na -- tion Moon.
Trav -- el fast as light 'til we're lost from sight,
The earth is like a toy bal -- loon, __
What a thrill you get rid -- in' on a “Jet,”
Des -- ti -- na -- tion Moon. __
We'll go up! up! up! up!
straight to the moon we two,
High in the star -- ry blue,
I'll be out of this world with you.
So a -- way we steal, in a space -- mo -- bile,
A sup -- er -- son -- ic hon -- ey -- moon. __
Leave your cares be -- low,
Pull the switch, let's go
Des -- ti -- na -- tion Moon.
}

refrainMillionDollarFakeChords = \chordmode {
  s4

  c2:m c2:dim bf2 g:dim c2:m7 f2:7 f2:m6 g2:7
  c2:m f2:7 bf2 g2:7 c2:7 c4:m7 f4:7 bf1

  c2:m c2:dim bf2 g:dim c2:m7 f2:7 f2:m6 g2:7
  c2:m f2:7 bf2 g2:7 c2:7 c4:m7 f4:7 bf1

  f2:m7 g2:dim f2:m7 bf2:7 ef2 bf2:7.5+ ef1
  g2:m7 c2:7 f2 c2:dim g2:m7 c2:7 f1:7
  
  ef2 c2:dim bf2 g:dim c2:m7 f2:7 f2:m6 g2:7
  c2:m f2:7 bf2 g2:7 c2:7 c4:m7 f4:7 bf1

  c1:9 c2:m7 f2:7.9- bf1 bf4 f4:7.5+ bf2
}

refrainScribdChords = \chordmode {
  s4

  b2:m7.5- bf2:6 a2:m7 af2:6 g2:min7 c2:7 a2:m7.5- d2:7.9-
  g2:m7 c2:7 a2:m7 d2:7.9+ g2:m7 c2:7.9- f2.:maj7 f4:/ef

  b2:m7.5- bf2:6 a2:m7 af2:6 g2:min7 c2:7 a2:m7.5- d2:7.9-
  g2:m7 c2:7 a2:m7 d2:7.9+ g2:m7 c2:7.9- f2:maj7 d4:m7 g4:7

  c2:m b2:dim7 c2:m f2:7.9+ bf2:maj7 f2:7.9+ bf1:maj7
  d2:m7 g2:7 e2:m7 a2:7.9-  d2:m11 g2:7 df2:9.13+ c2:7

  b2:m7.5- bf2:6 a2:m7 af2:6 g2:min7 c2:7 a2:m7.5- d2:7.9+
  g2:m7 c2:7.9- a2:m7 d2:7 g2:m7 c2:7 f2.:maj7
  \chordInsideParens{ f4:/ef }
  g1:9 g2:m7 c2:7.9- f1:maj7 f4:maj7 c4:7.5+ f2:maj7
}

refrainMuseChords = \chordmode {
  s4

  b2:m7.5- bf2:7 a2:m7 d2:7.9+ g2:m9 c2:7.9-
  a2:m7 d2:7 g2:m9 c2:9 a2:m7 d2:7.9+ g2:7 c2:7.9- f1:6

  b2:m7.5- bf2:7 a2:m7 d2:7.9+ g2:m9 c2:7.9-
  a2:m7 d2:7 g2:m9 c2:9 a2:m7 d2:7.9+ g2:7 c2:7.9- f1:6
  
  c2:m7 b2:m7.5- c2:m7 b2:7.11+ bf1:maj7 bf1:maj7
  d2:m7 g2:9 e2:m7.5- a2:7 d2:m7 g2:13 g2:m7 c2:7

  b2:m7.5- bf2:7 a2:m7 d2:7.9+ g2:m9 c2:7.9-
  a2:m7 d2:7 g2:m9 c2:9 a2:m7 d2:7.9+ g2:7 c2:7.9- f1:6
}

refrainChords = \transpose f bf \refrainMuseChords

refrainKey = bf

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium Bounce Swing" 4 = 165
  
  \mark \markup{ "Refrain" }

  \partial 4 f8 fs8 |
  \bar "||"
  
  \mark \markup{ \box "A1" }
  
  g8 d'4 c4. a8 g8 | f8 c'4 bf2 g8 |
  ef8 f8 g8 bf8 a4 f8 d8~ | d2. g8 d8 | ef4 f8 g4. a8 f8 |
  bf8 c4 d4. r4 | r4 cs8 d8 bf8 c4 d8~ | d2. f,8 fs8 |

  \bar "||"
  \mark \markup{ \box "A2" }

  g8 d'4 c4. a8 g8 | f4 c'8 bf2 g8 |
  ef8 f8 g8 bf8 a4 f8 d8~ | d2. g8 d8 | ef4 f8 g4. a8 f8 |
  bf8 c4 d4. r4 | r4 cs8 d8 bf8 c4 bf8~ | bf2. bf8 g8 |

  \bar "||"

  \mark \markup{ \box "B" }
  
  f4 r8 g8 r4 r8 af8 | r4 r8 bf8 r4 r8 c8~ |
  c8 c8 bf8 c4. bf8 g8~ | g1 | d'8 d8 c8 d4. c8 a8~ | a2. a8 bf8 |
  c8 bf8 c8 a4. g8 c8~ | c2. f,8 fs8 |

  \bar "||"
  \break
  \mark \markup{ \box "A3" }

  g8 d'4 c4. a8 g8 | f4 c'8 bf2 g8 |
  ef8 f8 g8 bf8 a4 f8 d8~ | d2. g8 d8 | ef4 f8 g4. a8 f8 |
  bf4 c8 d4. r4
  \textToCoda |
  r4 cs8 d8 bf8 c4 bf8~ | bf2 r2 |
  
  \bar "|."
}

codaLyrics = \lyricmode {
Des -- ti -- na -- tion Moon. __
Des -- ti -- na -- tion Moon. __
Des -- ti -- na -- tion Moon. __
}

codaMuseChords = \chordmode {
  g2:7 c2:7.9- a2:m7 d2:7
  g2:7 c2:7.9- a2:m7 d2:7
  g1:9 g2:m9 c2:7.9- f2:6 bf2:m7 b4.:dim7 c4.:7sus f4:6
}

codaChords = \transpose f bf \codaMuseChords

codaKey = bf

codaMelody = \relative f' {
  \time 2/2
  \key \codaKey \major
  \clef \whatClef
  
  \textCoda
  
  | r4 cs'8 d8 bf8 c4 d8~ | d2. r4 |
  | r4 cs8 d8 bf8 c4 d8~ | d2. r4 |
  r4 d2 g,4 | d'2 d2 | c8( bf4.) <ef bf>4 r4 | <e bf>4 r8 <f bf,>4. bf,,4\fermata |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/verse.ily"

\markup {
  % Leave a gap after the verse
  \vspace #2
}

\include "../Include/refrain.ily"

\markup {
  % Leave a gap before the coda
  \vspace #2
}

\include "../Include/coda.ily"

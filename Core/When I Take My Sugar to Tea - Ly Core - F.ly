%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

$(if (and (defined? 'printNoteNames) printNoteNames)
  #{ #(set-global-staff-size 18) #}
)

\header {
  title = "When I Take My Sugar to Tea"
  subtitle = \instrument
  poet = ""
  composer = "Sammy Fain, Irving Kahal and Pierre Norman"
  copyright = "© 1931 Famous Music Corp."
}

refrainLyrics = \lyricmode {
When I take my su -- gar to tea, __
all the boys are jeal -- ous of me; __
'cause I nev -- er take her where the gang goes, __
When I take my su -- gar to tea,
I'm a row -- dy dow -- dy, that's me, __
She's a high -- hat ba -- by, that's she. __
So I nev -- er take her where the gang goes, __
When I take my su -- gar to tea.
Ev' -- ry Sun -- day af -- ter -- noon, __
We for -- get a -- bout our cares, __
Rub -- bing el -- bows at the Ritz __
with those mil -- lion -- aires. __
When I take my sug -- ar to tea, __
I'm as Ritz -- y as I can be, __
'cause I nev -- er take her where the gang goes, __
When I take my su -- gar to tea.
}

refrainChords = \chordmode {
  s4.

  f2 fs2:dim7 c1:7 f2 fs2:dim7 c1:7 
  d1:7 g2:m7 bf2:m f2 c2:7 f2 c2:7

  f2 fs2:dim7 c1:7 f2 fs2:dim7 c1:7 
  d1:7 g2:m7 bf2:m f2 c2:7 f1

  bf1 bf1 ef1:7 ef1:7 f1 g1:7 df1:7 c1:7

  f2 fs2:dim7 c1:7 f2 fs2:dim7 c1:7 
  d1:7 g2:m7 bf2:m f2 c2:7 f2
  \chordInsideParens{ c2:7 }
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 145

  \partial 4. c'4 a8 |
  \bar "||"

  \mark \markup{ \box "A1" }
  
  d,4 d4 ef8 d8 ef4 | e2~ e8 c'4 a8 | d,4 d4 ef8d8 ef4 | e2~ e8 c'4 cs8 |
  \break
  d4 d4 d8 c8 bf8 a8 | c4. bf8~ bf4 f8 g8 | a4 a4 g8 f8 g4 | f2 r8 c'4 a8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A2" }
  
  d,4 d4 ef8 d8 ef4 | e2~ e8 c'4 a8 | d,4 d4 ef8d8 ef4 | e2~ e8 c'4 cs8 |
  \break
  d4 d4 d8 c8 bf8 a8 | c4. bf8~ bf4 f8 g8 | a4 a4 g8 f8 g4 | f2 r2 |
  
  \bar "||"
  \break

  \mark \markup{ \box "B" }
  
  f8 g4 bf8~ bf4 f4 | g4 bf8 d8~ d2 | df8 bf8 g8 f8 g4 g8 g8~ | g1 |
  \break
  a4 c4 c,4 d4 | f4 g8 a8~ a2 | r8 af4 af8 g4 f4 | c'2~ c8 c4 a8 |
  
  \bar "||"
  \break

  \mark \markup{ \box "A3" }

  d,4 d4 ef8 d8 ef4 | e2~ e8 c'4 a8 | d,4 d4 ef8d8 ef4 | e2~ e8 c'4 cs8 |
  \break
  d4 d4 d8 c8 bf8 a8 | c4. bf8~ bf4 f8 g8 | a4 a4 g8 f8 g4 | f2 r2 |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

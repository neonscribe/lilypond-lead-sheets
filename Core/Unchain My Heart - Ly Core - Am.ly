%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

#(set-global-staff-size 18)

\header {
  title = "Unchain My Heart"
  subtitle = \instrument
  poet = ""
  composer = "Bobby Sharp/Teddy Powell"
  copyright = \markup \small "© 1960 B. Sharp Music"
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _

Un -- chain my heart. __
Ba -- by, let me be. __
Un -- chain my heart __
'cause you don't care a -- bout me.
You've got me sewed up like a pil -- low -- case __
but you let my love go to waste, __
so un -- chain __ my heart, oh, please, please set me free. __

Un -- chain my heart. __
Ba -- by, let me go. __
Un -- chain my heart __
'cause you don't love me no more. __
Ev -- 'ry time I call you on the phone __
some fel -- la tells me that you're not at home __
so un -- chain __ my heart, oh, please, please set me free. __

I'm un -- der your spell __
like a man in a trance, __
but I know darn __ well __
that I don't stand a chance.

So, un -- chain my heart. __
Let me go my way. __
Un -- chain my heart. __
You wor -- ry me night and day. __
Why lead me through a life of mis -- er -- y __
when you don't care a bag of beans for me? __
So un -- chain __ my heart, oh, please, please set me free. __
}

refrainChords = \chordmode {
  s4

  a1:m6 a1:m6 a1:m6 a4:m6 r2.
  
  a1:m6 a1:m6 a1:m6 a1:m6
  f1:7 f1:7 a1:m6 a1:m6
  d1:m6 a1:m6 d1:m6 a1:m6
  f1:9 e1:7.9+ a1:m6 a4:m6 r2.

  a1:m6 a1:m6 a1:m6 a1:m6
  f1:7 f1:7 a1:m6 a1:m6
  d1:m6 a1:m6 d1:m6 a1:m6
  f1:9 e1:7.9+ a1:m6 a4:m6 r2.

  d1:m6 d1:m6 a1:m6 a1:m6
  d1:m6 d1:m6 e1:7 e4:m7 r2.

  a1:m6 a1:m6 a1:m6 a1:m6
  f1:7 f1:7 a1:m6 a1:m6
  d1:m6 a1:m6 d1:m6 a1:m6
  f1:9 e1:7.9+ a1:m6 a1:m6
}

refrainKey = a

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Medium [Ray Charles 1961]" 4 = 152

  \sectStart "Intro"
  
  \partial 4 \invisEighth gs,8(^"Piano" |
  
  a4-.) c8( d8-.) r8 c8( a8 g8 | a4-.) a'8^"Horns" e8 g8 a8 r8 gs8(^"Piano" |
  a4-.) c8( d8-.) r8 c8( a8 g8 | a4->) a4 a4 c8 e8~ |
  
  \sect "A1"
  
  e4 r4 r2 | r4 e8 c8 d8 a4 c8~ | c4 r4 r2 | r4 a4 a4 c8 d8~( |
  \break
  d8 a8) r4 r2 | r8 c8 d8 e8 d8 c8 a4 | c4 r4 r2 | r1 |
  \break
  r8 c8 d8 c8 d8 c8 d8 c8 | e4 d8 c8( d8 a4.) | r4 d8 c8 d4 d8 c8 | e4 d8 c8( a8) a8 c8 ef8( |
  \break
  d2) e8 c4 a8 | e4 e4 gs8 a4 a8~ |
  <<
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
	a,4-. c8( d8-.) r8 c8( a8 g8 | a4->) r4 r2 |
      }
    }
    { \voiceOne
      a'4 r4 r2 | r4 a4 a4 c8 e8~ |
    }
  >>
  \oneVoice

  \sect "A2"

  e4 r4 r2 | r4 e8 c8 d8 a4 c8~ | c4 r4 r2 | r4 a4 a4 c8 d8~( |
  \break
  d8 a8) r4 r2 | r8 c8 d8 e8 d8 c8 a8 d8~( | d8 a8) r4 r2 | r1 |
  \break
  r4 d8 c8 d8 c8 d8 c8 | e4 d8 c8( d8 a4.) | r8 c8 d8 c8 d8 c8 d8 c8 | e4 d8 c8( a8) a8 c8 ef8( |
  \break
  d2) e8 c4 a8 | e4 e4 gs8 a4 a8~ |
  <<
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
	a,4-. c8( d8-.) r8 c8( a8 g8 | a4->) r4 r2 |
      }
    }
    { \voiceOne
      a'4 r4 r2 | r4 a4 a8 c8 a8 d8~( |
    }
  >>
  \oneVoice

  \bar "||"
  
  \xPageBreak
  
  \sectStart "B"
  
  d8 a8) r4 r2 | r4 c8 d8 e8 d8 c8 e8~ | e4 r4 r2 | r4 a,8 d8 a4 c8( a8) |
  d8( a8) r4 r2 | r4 d8 c8 d4 d8 c8 | e4 r4 r2 | r8 a,8 a4 a4 c8 e8~ |

  \sect "A3"

  e4 r4 r2 | r4 e8 c8 d8 a4 c8~ | c4 r4 r2 | r4 a4 a4 c8 d8~( |
  \break
  d8 a8) r4 r2 | r8 c8 d8 e8 d8 c8 a8 d8~( | d8 a8) r4 r2 | r1 |
  \break
  r8 c8 d8 c8 d8 c8 d8 c8 | e4 d8 c8( d8 a4.) | r8 c8 d8 c8 d8 c8 d8 c8 | e4 d8 c8( a8) a8 c8 ef8( |
  \break
  d2) e8 c4 a8 | e4 e4 gs8 a4 a8~ |
  <<
    \new Voice
    { \voiceTwo
      \magnifyMusic 0.63 {
	a,4-. c8( d8-.) r8 c8( a8 g8 | a4->) r4 r2 |
      }
    }
    { \voiceOne
      a'4 r4 r2 | r1 |
    }
  >>
  \oneVoice

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

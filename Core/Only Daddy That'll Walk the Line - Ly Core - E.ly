%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "Only Daddy That'll Walk the Line"
  subtitle = \instrument
  poet = ""
  composer = "Jimmy Bryant"
  copyright = \markup \small { \now " " "© 1967 Beechwood Music Corp." }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _
Ev -- 'ry -- bod -- y knows you've been step -- ping on my toes __
and I'm get -- tin' pret -- ty ti -- red of it.
You keep a step -- pin' out -- ta line and a mess -- in' with my mind.
If you had an -- y sense you would quit.
'Cause ev -- er since you were a lit -- tle bit -- ty teen -- y girl
you said I was the on -- ly man in this old world. __
And now you bet -- ter do some think -- in', then you'll find
you got the on -- ly dad -- dy that -- 'll walk the line. __
}

refrainChords = \chordmode {
  e1 e1
  
  e1 e1 e1 e1
  a1 a1 a1 a1
  b1:7 b1:7 b1:7 b1:7 b1:7 b1:7
  e1 e1 e2
  e1 e1 e1 e1

  e1 e1 e1 e1
  a1 a1 a1 a1
  b1:7 b1:7 b1:7 b1:7 b1:7 b1:7
  e4 r4*9
  e1 e1 e1 e1
}

refrainKey = e

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium" 4 = 120

  \sectStart "Intro"
  
  \ambitusOff
  \bar ".|:"
  \repeat volta 2 {
  <<
    { \voiceOne
      e4^"(guitar riff)" e8 b8 d4 d8 b8 | cs4 cs8 a8 \tuplet 3/2 { b8( cs8 b8) } \tuplet 3/2 { g8( fs8 e8) }
    }
    \new Voice
    { \voiceTwo
      e4 e4 e4 e4 | e4 e4 e4 s4 |
    }
  >>
  \oneVoice
  }
  \bar "||-:|."
  \ambitusOn
  
  \sectNoBar "Verse"
  
  gs'8 g8 gs8 gs8 gs4 gs8 g8 | gs8 g8 gs8 g8 gs8( fs8) e8 e8 | gs8 e8 gs8 gs8 b8 a8 gs8 gs8 | r2 r8 b8 b8 b8 |
  \break
  cs8 c8 cs8 cs8 cs4 cs8 cs8 | c8 cs8 cs8 cs8 b4 a8 a8 | cs8 c8 cs8 e8~ e8 b4 cs8 | a4 r4 r4 r8 e8 |
  \break
  ds'8 ds8 ds8 ds8 ds8 ds8 ds8 ds8 | d8 ds8 d8 ds8 b4 r8 b8 | ds8 d8 ds8 b8 cs8 b8 cs8 b8 | fs'8 ds4 b8~ b4. b8 |
  \break
  cs8 ds8 ds8 ds8 cs8 b8 cs8 b8 | fs'8 ds4 b8~ b8 b8 cs8 b8 |
  e1~ | e4 d8 cs8 b8 cs8 b8 e,8 |
  \time 2/4
  g8 fs8 e8 e8~ |
  \numericTimeSignature
  \time 4/4

  \sectNoBreak "Interlude with Intro Riff"

  e2 r2 | r1 | r1 | r1 |
  
  \xPageBreak

  \sectNoBar "Solo"
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \break
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | 
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \time 2/4
  \rsq \rsq | 
  \break
  \numericTimeSignature
  \time 4/4
  \rsq^"(guitar riff)" \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\markup {
  \column 
  \bold
  {
   \vspace #2
   \line { \large { Intro } }
   \vspace #1
   \line { \large { Verse 1 } }
   \vspace #9
   \line { \large { Verse 2 } }
   \vspace #9
   \line { \large { Solo } }
   \vspace #1
   \line { \large { Verse 3 } }
   \vspace #8
   \line { \large { Outro } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #2
   \line { \large { \italic { (guitar riff) } } }
   \vspace #1
   \line { \large { Everybody knows you've been stepping on my toes } }
   \line { \large { and I'm getting pretty tired of it. } }
   \line { \large { You keep a-stepping outta line and a-messing with my mind. } }
   \line { \large { If you had any sense, you'd quit. } }
   \line { \large { 'Cause ever since you were a little bitty teeny girl } }
   \line { \large { You said I was the only man in this whole world. } }
   \line { \large { Now you better do some thinking, then you'll find } }
   \line { \large { you got the only daddy that'll walk the line. } }
   \line { \large { \italic { (guitar riff) } } }
   \vspace #1
   \line { \large { I keep a-working every day, all you want to do is play } }
   \line { \large { I'm tired of staying out all night } }
   \line { \large { I'm a-coming unglued from your funny little moods } }
   \line { \large { Now, honey-baby, that ain't right } }
   \line { \large { 'Cause ever since you were a little bitty teeny girl } }
   \line { \large { You said I was the only man in this whole world } }
   \line { \large { Now you better do some thinking, then you'll find } }
   \line { \large { You got the only daddy that'll walk the line } }
   \line { \large { \italic { (guitar riff) } } }
   \vspace #1
   \line { \large { \italic { (Verse form, stop on “only daddy,” finish with guitar riff) } } }
   \vspace #1
   \line { \large { You keep a-packing up my clothes, nearly everybody knows } }
   \line { \large { That you're still just a-putting me on } }
   \line { \large { But when I start a-walking, gonna hear you start a-squawking } }
   \line { \large { And a-begging me to come back home } }
   \line { \large { 'Cause ever since you were a little bitty teeny girl } }
   \line { \large { You said I was the only man in this whole world } }
   \line { \large { Now you better do some thinking, then you'll find } }
   \line { \large { You got the only daddy that'll walk the line } }
   \vspace #1
   \line { \large { You got the only daddy that'll walk the line } }
   \line { \large { \italic { (guitar riff, repeat) } } }
 }
}

%{
Won't you tell me if you can what's the matter with a man
When he starts a stayin' out all night
He's been a steppin' outta line and a messin' off my mind
And don't you know that that ain't right
'Cause ever since I was a little bitty teeny girl
He thought he was the only man in this whole world
But now he bettter do some thinkin' and then he'll find
He's got the only mama that'll walk the line
While I'm workin' every day all he wants do is play
And I'm gettin' tired of bein' here alone
And I'm a comin' unglued from his funny little moods
When he finally come a dragging home
'Cause ever since I was a little bitty teeny girl
I keep a packin' up my clothes but everybody knows
That I'm really just a puttin' him on
Now when I start a walkin' after when you'll hear him squawkin'
And a beggin' me to come back home
'Cause ever since I was a little bitty teeny girl
He's got the only mama that'll walk the line
%}

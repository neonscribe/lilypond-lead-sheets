%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Pick Me Up on Your Way Down"
  subtitle = \instrument
  poet = ""
  composer = "Harlan Howard"
  copyright = \markup \small { \now " " "© 1958 Good Ol Harlan Songs" }
}

refrainLyrics = \lyricmode {
You were mine for just a while __
now you're put -- ting on the style. __
And you've nev -- er once looked back
at your home a -- cross the tracks. __
You're the gos -- sip of the town __
but my heart can still be found __
where you tossed it on the ground. __
Pick me up on your way down. __

Pick me up on your way down __
when you're blue and all a -- lone. __
When the glam -- our starts to bore you,
come on back where you be -- long.

You may be their pride and joy
but they'll find a -- noth -- er toy. __
Then they'll take a -- way your crown.
Pick me up on your way down. __

(They have)
}

refrainLyricsTwo = \lyricmode {
_ _

changed your at -- ti -- tude
Made you haugh -- ty and so rude
Your new friends can take the blame
Un -- der -- neath you're still the same

When you learn these things are true
I'll be wait -- ing here for you
As you tum -- ble to the ground
Pick me up on your way down
}

refrainChords = \chordmode {
  s2
  
  a1 a1 d1 d1
  e1:7 e1:7 e1:7 a1
  a1 a1 d1 d1
  e1:7 e1:7 e1:7 a1 a1

  a1 a1 d1 d1
  e1:7 e1:7 e1:7 a1
  a1 a1 d1 d1
  e1:7 e1:7 e1:7 a1 a1
}

refrainKey = a

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 2/2
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Medium [Charlie Walker 1958]" 4 = 150
  
  \partial 2 e'8 e4. |
  \bar "||"

  \sectStart "Verse"
  
  fs4 e4 e4 cs8 a8~ | a2 b8 cs4. | e8 d4. d4 a8 fs8~ | fs2 b4 cs4 |
  \break
  d4 cs4 d4 b4 | gs2 e'4 e4 | fs4 e4 e4 d8 cs8~ | cs2 e4 e4 |
  \break
  fs8 e4. e4 cs8 a8~ | a2 b4 cs4 | e4 d4 d4 a8 fs8~ | fs2 b8 cs4. |
  \break
  d4 cs4 d4 cs8 gs8~ | gs2 e'8 e4. | e4 d4 fs,8 gs4 a8~ | a1~ | a2 e'8 e4. |

  \sect "Chorus"
  
  fs8 e4. e4 cs8 a8~ | a2 b4 cs4 | e4 d4 d4 a8 fs8~ | fs2 cs'8 cs4. |
  \break
  d8 cs4. d4 b4 | gs4 e4 e'8 e4. | fs4 e4 e4 d4 | cs2 cs8 e4. |
  \break
  fs4 e4 e4 cs4 | a2 b4 cs4 | e4. d8 d8 a4 fs8~ | fs2 b4 cs4 |
  \break
  d4 cs4 d4 b4 | gs2 e'4 e4 | e4 d4 fs,8 gs4 a8~ | a2. r4 | r2 
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  e'8 
  \endParenthesis \parenthesize e4. |
  
  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

%{
You were mine for just a while
Now you're putting on the style
And you've never once looked back
At your home across the tracks

You're the gossip of the town
But my heart can still be found
Where you tossed it on the ground
Pick me up on your way down

Pick me up on your way down
When you're blue and all alone
When the glamor starts to bore you
Come on back where you belong

You may be their pride and joy
But they'll find another toy
Then they'll take away your crown
Pick me up on your way down

[Bridge]

They have changed you're attitude
Made you haughty and so rude
Your new friends can take the blame
Underneath you're still the same
See country shows near Seattle
Get tickets as low as $62
You might also like
Keys In the Mailbox
Buck Owens
All For The Love Of A Girl
Johnny Horton
Kiss Me Goodnight
Alexandra Kay
When you learn these things are true
I'll be waiting here for you
As you tumble to the ground
Pick me up on your way down

Pick me up on your way down
When you're blue and all alone
When the glamor starts to bore you
Come on back where you belong

You may be their pride and joy
But they'll find another toy
Then they'll take away your crown
Pick me up on your way down
%}

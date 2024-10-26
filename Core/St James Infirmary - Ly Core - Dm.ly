%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "St. James Infirmary"
  subtitle = \instrument
  poet = ""
  composer = "Joe Primrose"
  copyright = "© 1929 Gotham Music Service Inc."
}

refrainLyrics = \lyricmode {
}

refrainChords = \chordmode {
  s4
  
  d2:m a2:7 d1:m d2:m bf2:7 a1:7
  d2:m a2:7 d4:m d4:m/cs d4:m/c d4:m/b
  bf2:7 a2:7 d2:m
  \chordInsideParens{ a2:7 }
}

refrainKey = d

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef
  \tempo "Slow Blues" 4 = 100
  
  \partial 4 d8 f8 |
  \bar "||"
  
  a4 a8 a8 g4. a8 | f8 d4. r4 a'4 | a4. a8 d4 bf8 a8~ | a2 r4 d,8 f8 |
  \break
  a4 a8 a8 g4. a8 | f8 d4. r4 r8 e8 | f4. d8 f4 e8 d8~ | d2 r2 |

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

%{
Folks, I'm goin' down to St. James Infirmary
See my baby there
She's stretched out on a long, white table
She's so sweet, so cold, so fair

Let her go, let her go, God bless her
Wherever she may be
She will search this wide world over
But she'll never find another sweet man like me

Now, when I die, bury me in my straight-leg britches
Put on a box-back coat and a Stetson hat
Put a twenty-dollar gold piece on my watch chain
So you can let all the boys know I died standing pat

Then give me six crap shooting pall bearers
Let a chorus girl sing me a song
Put a red hot jazz band at the top of my head
So we can raise Hallelujah as we go along

Folks, now that you have heard my story
Say, boy, hand me over another shot of that booze
If anyone should ask you
Tell 'em I've got those St. James Infirmary blues
%}
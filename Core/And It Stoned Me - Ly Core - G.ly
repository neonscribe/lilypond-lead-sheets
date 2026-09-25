%% -*- Mode: LilyPond -*-

songID = "2026-09-23T20:39:38.243814Z"

\include "../Include/lead-sheets.ily"

headerTitle = "And It Stoned Me"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Van Morrison"
headerCopyright = "© 1969 Caledonia Soul Music"

straightEighths = ##t

refrainLyrics = \lyricmode {
\stanza "1. "
Half a mile from the coun -- ty fair and the rain came pour -- in' down. __
Me and Bil -- ly stand -- in' there with a sil -- ver half a crown. __
Hands are full of a fish -- in' rod __ and the tack -- le on our backs.
We just stood __ there get -- ting wet, with our backs a -- gainst __ the fence.

Oh, __ the wa -- ter, oh, __ the wa -- ter, oh, the wa -- ter, hope it don't rain all day. __

And it stoned me __ to my soul, stoned me just like __ jel -- ly roll, __ and it stoned __ me. __
And it stoned me __ to my soul, __ stoned me just like __ go -- in' home, __ and it stoned __ me. __

And the

stoned __ me. __
And it stoned me __ to my soul, stoned me just like __ jel -- ly roll, __ and it stoned __ me. __
And it stoned me __ to my soul, stoned me just like __ go -- in' home, __ and it stoned __ me. __
}

refrainChords = \chordmode {
  g2 d2 c2 g2
  g2 d2 c2 g2
  g2 d2 c2 g2
  g2 d2 c2 g2

  a2:m7 d2 a2:m7 d2 a2:m7 d2 e1:m9 d1:6
  
  g2 c2 c2 g2 g2 d2:7 e16*3:m d16*3:sus7 g8*5
  g2 c2 c2 g2 g2 d2:7 e16*3:m d16*3:sus7 g8*5
  
  e16*3:m d16*3:sus7 g8*5
  g2 c2 c2 g2 g2 d2:7 e16*3:m d16*3:sus7 g8*5
  g2 c2 c2 g2 g2 d2:7 e8*3:m g8*5
}

refrainKey = g

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Slow Straight Eighths [Van Morrison 1970]" 76

  \bar ".|:"
  \repeat volta 4 {

  \sectNoBar "Verse"
  
  r8_"4x" b16 b16 b8 a16 g16 a16 a16 b8 r8 a16 g16 | a8 b8 a16 g8 a16( g4) r4 |
  r8 b16 b16 b16 b8 a16~ a16 a16 b8 r8 a16 g16 | a16( g16) g8 g16 g16 g16( a16 g4) r4 |
  r8 b16 b16 b16 b8 b16 b16 a16 a16( b16) r8 g16 g16 | a16 a8. g16 g16 g8 r2 |
  b16 d8 e16~ e16 d8. b16 a16 b8 r8 a16 g16 | a8 g16 g16~ g16 e16 g8 r2 |
  
  \bar "||-||"
  
  r8 a8~ a8. g16 b8 a8 r4 | e'4( d8.) d16 b8 a8 r4 | 
  r8 a8~ a8. g16 b8 a8 r4 | r4 b16 b16 a16( g16) g8 g8 e16( d8.) | r2 r4 r8 g16 a16 |
  
  \sect "Chorus"
  
  b4 a16( g8 d16) e16 g8 a16~

  <<
    { \xVoiceTwoSmall {
      r8 <b d>16 <d f>16 | <e g>2 <d g>2 |
      }
    }
    { \voiceOne
      a4 | s1
    }
  >>
  \oneVoice
  
  b16 d8 d16 d8( b8) b16 a16 a16( b16 a8) e16 g16 |
  b8( a16 g16~ g8) g8~ g4 r8 g16 a16 | b4 a16( g8 d16) e16 g8 a16~

  <<
    { \xVoiceTwoSmall {
      r8 <b d>16 <d f>16 | <e g>2 <d g>2 |
      }
    }
    { \voiceOne
      a4 | s1
    }
  >>
  \oneVoice
  
  b16 d8 d16 d8( b8) b16 a16 a16( b16 a8) e16 g16 \textToCodaLastTime | b8( a16 g16 a8) g8~ g4 r8 e16 g16 |
  
  }
  \bar "||-:|."

  \textCodaBreak
  
  b8( a16 g16 a8) g8~ g4 r8 e16 g16 |
  b4 a16( g8 d16) e16 g8 a16~

  <<
    { \xVoiceTwoSmall {
      r8 <b d>16 <d f>16 | <e g>2 <d g>2 |
      }
    }
    { \voiceOne
      a4 | s1
    }
  >>
  \oneVoice
  
  b16 d8 d16 d8( b8) b16 a16 a16( b16 a8) e16 g16 |
  b8( a16 g16 a8) g8~ g4 r8 g16 a16 |
  b4 a16( g8 d16) e16 g8 a16~

  <<
    { \xVoiceTwoSmall {
      r8 <b d>16 <d f>16 | <e g>2 <d g>2 |
      }
    }
    { \voiceOne
      a4 | s1
    }
  >>
  \oneVoice
  
  b16 d8 d16 d8( b8) b16 a16 a16( b16 a8) e16 g16 |
  b8( e8 d16 b16) e8~( e8 d4.\fermata)

  \bar "|."
}

afterText =
\markup {
  \column
  \bold
  {
   \vspace #3
   \line { \large { Verse 1 } }
   \vspace #1
   \line { \large { Chorus } }
   \vspace #1
   \line { \large { Verse 2 } }
   \vspace #6
   \line { \large { Chorus } }
   \vspace #1
   \line { \large { Solo } }
   \vspace #1
   \line { \large { Chorus } }
   \vspace #1
   \line { \large { Verse 3 } }
   \vspace #6
   \line { \large { Chorus } }
   \vspace #1
   \line { \large { Coda } }
   }
  \column
  {
    \hspace #4
    }
  \column
  {
   \vspace #7
   \line { \large { And the rain let up, and the sun came up while we were getting dry. } }
   \line { \large { Almost let a pickup truck nearly pass us by. } }
   \line { \large { So we jumped right in and the driver grinned and he dropped us up the road. } }
   \line { \large { And we looked at the swim and we jumped right in not to mention fishing poles. } }
   \vspace #1
   \line { \large { Oh, the water, oh, the water, oh, the water, let it run all over me. } }
   \vspace #3
   \line { \large { \italic { Instrumental on verse form } } }
   \vspace #3
   \line { \large { On the way back home we sang a song but our throats were getting dry. } }
   \line { \large { Then we saw the man from across the road with the sunshine in his eye. } }
   \line { \large { Well, he lived all alone in his own little home with a great big gallon jar. } }
   \line { \large { There were bottles too, one for me and you and he said, “Hey, there you are.” } }
   \vspace #1
   \line { \large { Oh, the water, oh, the water, oh, the water, get it myself from the mountain stream. } }
 }
}

\include "../Include/refrainonly.ily"

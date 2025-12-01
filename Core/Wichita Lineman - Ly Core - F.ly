%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

\header {
  title = "Wichita Lineman"
  subtitle = \instrument
  poet = ""
  composer = "Jimmy Webb"
  copyright = \markup \small { \now " " "© 1968 Canopy Music Inc." }
}

introChords = \chordmode {
  r2 f1:maj7 c1:sus9 f1:maj7
}

introKey = f

bassIntro = \relative f' {
  \time 4/4
  \key \introKey \major
  \clef bass
  \tempo "Ballad [Glen Campbell 1968]" 4 = 86
  
  \sectStart "Intro"

  \partial 2 bf,16_"(Bass)" a16 r16 f16 r16 d16 c16 r16 |
  
  f,4. f8 f4. f8 | f2 bf'16 a16 r16 f16 r16 d16 c16 r16 | f,4. f8 f4. f8 |

  \bar "||-||"
}

refrainLyrics = \lyricmode {
I am a line -- man for the coun -- ty, and I drive the main _ roads.
Search " " in' in the sun " " for an -- oth -- er o -- ver -- load.
I hear you sing -- in' in the wi -- res. I can hear you through the whine. __
And the Wi -- chi -- ta line -- man is still on the line. __

I know I need a small va-
}

refrainLyricsTwo = \lyricmode {
_ _ _ _ _ _ _
ca -- tion, but it don't _ look like rain.
And if it snows that stretch down south won't ev -- er stand the strain.

" " And I need you more than want you, and I want you for all time. __ ""
}

refrainChords = \chordmode {
  c1:sus9
  
  bf1:maj7 a1:m7 c1:sus9 
  d2:m7 a2:m7 g1 d1:sus d1 
  c1:1.3.5.9 c1:1.3.5.9 g1/b g1:m/bf 
  d1/a a1:sus7 bf1 c1:1.3.5.9
  bf1
  
  c1:sus9
  
  c1:sus9 
  
  bf1 c1:1.3.5.9
}

refrainKey = f

refrainMelody = \relative f' {
  \time 4/4
  \key \refrainKey \major
  \clef \whatClef

  r8 c8 f8 g8 bf8 bf8 a8 g8 |
  
  \bar ".|:"
  \repeat volta 3 {

  a8 c4.~ c4 r4 | r4 f,8 g8 bf8 a8 f8 c8 | c2. r4 |
  \break
  \set melismaBusyProperties = #'()
  \slurDashed
  f16( f16)
  c'8 c8 c8 
  c8( c8) 
  \slurSolid
  \unset melismaBusyProperties
  c8 c8 | c8 d4. b8( a8) g8 a8~ | a2. r4 |
  
  \break

  r8 a8 a8 a8 a8 a8 g8 fs8 |
  
  d8 e4.~ e4 r4 | r4 a8 a8 a8 a8 g8 fs8 |
  
  \break
  
  g8( fs8 d2) r4 | r4 d8 d8 \tuplet 3/2 { a'4 g4 fs4 } | g8( fs8) d2 r4 |
  
  \break
  
  r4 r8 d8 e8 d8 d8 d'8~ | d1~ | d4 r4 r2 | r1 |
  
  \alternative { \volta 1,2 {
  
  r8 c,8 f8 g8 bf8 bf8 a8 g8 |
  
  } \volta 3 {

  r1 |
  
  } } }
  \break
  \repeat volta 2 {

  d'16 d8 d16 d8 d16 d16~ d16 d16 d8 e16 f16 e16 c16 |
  d16 d8 d16 d8 d16 d16~ d16 d16 d8 e16 f16 e16 c16 |
  
  }
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/bass-intro.ily"

\include "../Include/refrain.ily"

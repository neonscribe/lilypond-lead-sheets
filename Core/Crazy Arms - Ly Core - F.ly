%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

% #(set-global-staff-size 18)

\header {
  title = "Crazy Arms"
  subtitle = \instrument
  poet = ""
  composer = "Ralph Mooney, Chuck Seals"
  copyright = \markup \small { \now " " "© 1955 Songs of Universal, Inc." }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

Now, blue ain't the word __ for the way __ that I feel,
and a storm's brew -- ing in __ this heart of mine.
This ain't no cra -- zy dream, I know that it's real.
You're some -- one else -- 's love now, you're not mine.

Cra -- zy arms __ that reach to hold __ some -- bod -- y new,
for my yearn -- ing heart  __ keeps say -- ing you're not mine.
My trou -- bled mind knows soon to an -- oth -- er you'll be wed,
and that's why I'm lone -- ly all the time. __
}

refrainChords = \chordmode {
  s2
  
  f1 c1:7 f1 f1
  
  f1 f1:7 bf1 f1
  f1 c1:7 f1 f1
  
  f1:7 f1:7 bf1 f1
  f1 f1 c1:7 c1:7
  f1:7 f1:7 bf1 f1
  f1 c1:7
  
  f1 f1
  
  f1 c1:7 f1 f1

  f1 f1
}

refrainKey = f

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
  \tempo "Medium [Ray Price 1956]" 4 = 115

  \ambitusOff
  \partial 2 <f a>4_"(Fiddle)" <g a>4 |
  \bar "||"

  \sectStart "Intro"
  
  \acciaccatura g8 a4. g8 a4 <a c>4 | \acciaccatura { bf16 c16 } bf8 a8 g4 <f c'>4 <e c'>4 |
  \acciaccatura d8 <f a>2 <f c'>8 g8 f8 d8 | <c f>2. 
  \ambitusOn
  c'4 |
  
  \sect "Verse"
  
  \bar ".|:-||"
  \repeat volta 2 {

  c2 c4 d8 ef8~ | ef2 r8 d4 c8 | bf2~ bf8 f8 d4 | c2 r4 a'8 a8 | 
  \break
  a2 c8 c4 d8~ | d8 c4. bf4 a4 | g1 | r1 |
  \break
  c2 c4 d4 | ef4 ef8 d8~ d4 c4 | bf2~ bf8 f8 d4 | c2 r4 af'4 |
  \break
  a8 a4 c8~ c4 a4 | bf8 g4. f8 e4. | f1 | r1 |
  
  \sect "Chorus"
  
  c'2. d8 ef8~ | ef4. ef8 d4 c8 bf8~ | bf4. bf8~ bf8 f8 d4 | c2 r4 f8 g8 |
  \break
  a4 gs8 a8~ a4 c8 d8~ | d4 c4 bf4 a4 | g1 | r2 r4 c4 |

  \xPageBreak
  
  c8 c4. c4 d4 | ef2 d4 c4 | bf8 bf4. f4 d4 | c2 r4 g'4 |
  \break
  a2 c4 c4 | bf8 a8 g4 f4 e8 f8~ |
  
  \alternative { \volta 1 {
  
  f1 | r4
  \ambitusOff
  <a c>4_"(Pedal Steel}" <d f>4 <e g>4 |

  \sect "Interlude"
  
  \acciaccatura <e g>8 <f a>2 \acciaccatura <e g>8 <f a>4 <a c>4 |
  <g bf>8( <f bf>8) \acciaccatura d8 <e g>4 <c e>4 <a' c>8( <g c>8) |
  <e a>8( <f a>4.) <a c>4 \acciaccatura <a c>8 <bf d f>4 |
  \acciaccatura <a c>8 <bf d f>4( <a c f>2) c,4 |
  \break  
  } \volta 2 {
  
  r4 \ottava #1 <f a>4 <a c>4 \acciaccatura <a c>8 <bf d f>4 |
  \acciaccatura <bf d>8 <a c f>4( <e' g c>4 <f a c>2)\fermata |
  \ambitusOn
  } } }
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
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Interlude } }
   \vspace #1
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Coda } }
   }
  \column
  {
    \hspace #4
    }
  \column 
  {
   \vspace #4
   \line { \large { Now, blue ain't the word for the way that I feel } }
   \line { \large { And the storm's brewing in this heart of mine } }
   \line { \large { This ain't no crazy dream, I know that it's real } }
   \line { \large { You're someone else's love now, you're not mine } }
   \vspace #1
   \line { \large { Crazy arms that reached to hold somebody new } }
   \line { \large { For my yearning heart keeps saying you're not mine } }
   \line { \large { My troubled mind knows soon to another you'll be wed } }
   \line { \large { And that's why I'm lonely all the time } }
   \vspace #3
   \line { \large { So please, take the treasured dreams I had for you and me } }
   \line { \large { And take all the love I thought was mine } }
   \line { \large { Someday my crazy arms may hold somebody new } }
   \line { \large { But now I'm so lonely all the time } }
   \vspace #1
   \line { \large { Crazy arms that reached to hold somebody new } }
   \line { \large { For my yearning heart keeps saying you're not mine } }
   \line { \large { My troubled mind knows soon to another you'll be wed } }
   \line { \large { And that's why I'm lonely all the time } }
 }
}


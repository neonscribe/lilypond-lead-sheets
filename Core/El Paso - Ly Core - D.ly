%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

% #(set-global-staff-size 18)

instrument =
#(if (and (defined? 'instrument) instrument)
  instrument
  "Standard Key")

\header {
  title = "El Paso"
  subtitle = \instrument
  poet = ""
  composer = "Marty Robbins"
  copyright = \markup \small { \now " " "© 1959 Mariposa Music, Inc." }
}

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Out in the west Tex -- as town of El Pa -- so, I fell in love with a Mex -- i -- can glrl. __

One might a wild young cow -- boy came in,
wild as the west Tex -- as wind. __
Dash -- ing and dar -- ing, a drink he was shar -- ing,
with wick -- ed Fe -- li -- na, the girl that I loved. __
So, in an -- ger I

one lit -- tle kiss and Fe -- li -- na good -- bye. __
}

refrainLyricsTwo = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Night time would find me in Ro -- sa's can -- ti -- na. Mu -- sic would play and Fe -- li -- na would whirl. __ ""
}

refrainLyricsThree = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Black -- er than night were the eyes of Fe -- li -- na. Wick -- ed and e -- vil while cast -- ing a spell. __ ""
}

refrainLyricsFour = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
My love was deep for this Mex -- i -- can mai -- den. I was in love, but in vain I could tell. __ ""
}

refrainChords = \chordmode {
  d2. d2. e2.:m e2.:m a2.:7 a2.:7 a2.:7 d2. d2. d2. d2.
  
  d2. d2. e2.:m e2.:m a2.:7 a2.:7 a2.:7 d2. d2. d2. d2.
  
  g2. g2. g2. g2. g2. g2. d2.:7 d2.:7 d2.:7 d2.:7 d2.:7 d2.:7
  d2.:7 d2.:7 d2.:7 d2.:7 d2.:7 d2.:7 d2.:7 d2.:7 d2.:7
  g2. g2. a2.:7 a2.:7
  
  a2.:7 a2.:7 a2:7 r4*4 d2.
}

refrainKey = d

whatKey =
#(if (and (defined? 'whatKey) whatKey)
  whatKey
  refrainKey)

whatClef =
#(if (and (defined? 'whatClef) whatClef)
  whatClef
  "treble")

refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Fast Waltz, in 1 [Marty Robbins 1959]" 2. = 107

  \sectStart "Intro"
  
  \ambitusOff
  a4_"(Guitar)" d4 fs4 | a4 fs4 d4 | e,8 g8 b8 e8 g8 a8 | b4 g4 e4 |
  <b' d>4. <b d>8 <b d>4 | <b d>4 <a cs>4 r8 <g b>8 | <g b>4 <fs a>4 <e g>4 | <d fs>2 r4 |
  <b' d>8 <b d>8 <b d>8 <b d>8 <b d>8 <b d>8 | <a cs>4 <fs a>4~ <fs a>8 <a cs>8 | d,2. |
  \ambitusOn
  
  
  \sectNoBar "Verse"
  
  \bar ".|:-||"
  \repeat volta 4 {
  d,4 d4 fs4 | a4 fs4 d4 | e4 e4 g4 | b4 g2 \textToCodaLastTime |
  a,4 cs8 e8~ e4 | g4 fs8 e8~ e4 | g4 fs4 e4 | d2.~ | d2. | R2.*1 | R2.*1 |
  }
  \bar "||-:|."
  
  \sectNoBar "Bridge"
  
  d4 g4 g4 | b2 b4 | c4 b4 a4 | g2. | d4 g4 b4 | c4 b4 c4 |
  d2.~( | d2. | fs2.~ | fs4. e8 d4 | c2.~ | c2.~ | c2.) | r2. |
  d,4 fs4 a4 | d4 d4 b8 d8~ | d4 c4 a4 | fs4 d4 d4 | d4 fs4 a4 |
  c4 b4 a4 | c4 b4 a4 | g2.~ | g4 fs4 g4 | a2. | g4( e4) cs4 |
  
  \bar "||-|."

  \textCodaBreak
  
  a4 cs4 e4 | g4^"ritardando" fs4 e4 | g4 fs4\fermata e4\fermata | d2.~ | d2.\fermata

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

\pageBreak

\markup {
  \column 
  {
   \vspace #2
   \line { \large { Out in the West Texas town of El Paso, I fell in love with a Mexican girl. } }
   \line { \large { Night time would find me in Rosa's cantina. Music would play and Felina would whirl. } }
   \vspace #1
   \line { \large { Blacker than night were the eyes of Felina. Wicked and evil while casting a spell. } }
   \line { \large { My love was deep for this Mexican maiden. I was in love, but in vain I could tell. } }
   \vspace #1
   \line { \large { \hspace #5 One night, a wild young cowboy came in, wild as the West Texas wind. } }
   \line { \large { \hspace #5 Dashing and daring, a drink he was sharing } }
   \line { \large { \hspace #5 with wicked Felina, the girl that I loved. So in anger I } }
   \vspace #1
   \line { \large { challenged his right for the love of this maiden. } }
   \line { \large { Down went his hand for the gun that he wore. } }
   \line { \large { My challenge was answered in less than a heartbeat. } }
   \line { \large { The handsome young stranger lay dead on the floor. } }
   \vspace #1
   \line { \large { Just for a moment, I stood there in silence, shocked by the foul evil deed I had done. } }
   \line { \large { Many thoughts raced through my mind as I stood there. } }
   \line { \large { I had but one chance and that was to run. } }
   \vspace #1
   \line { \large { \hspace #5 Out through the back door of Rosa's I ran. Out where the horses were tied. } }
   \line { \large { \hspace #5 I caught a good one, it looked like it could run. } }
   \line { \large { \hspace #5 Up on its back and away I did ride, just as fast as I } }
   \vspace #1
   \line { \large { could from the West Texas town of El Paso, out to the badlands of New Mexico. } }
   \vspace #1
   \line { \large { Back in El Paso, my life would be worthless. Everything's gone in life, nothing is left. } }
   \line { \large { It's been so long since I've seen the young maiden. } }
   \line { \large { My love is stronger than my fear of death. } }
   \vspace #1
   \line { \large { \hspace #5 I saddled up and away I did go, riding alone in the dark. } }
   \line { \large { \hspace #5 Maybe tomorrow, a bullet may find me, } }
   \line { \large { \hspace #5 tonight nothing's worse than this pain in my heart and at last here I } }
   \vspace #1
   \line { \large { am on the hill, overlooking El Paso I can see Rosa's cantina below. } }
   \line { \large { My love is strong and it pushes me onward, down off the hill to Felina I go. } }
   \vspace #1
   \line { \large { Off to my right I see five mounted cowboys, off to my left ride a dozen or more. } }
   \line { \large { Shouting and shooting, I can't let them catch me. I have to make it to Rosa's back door. } }
   \vspace #1
   \line { \large { \hspace #5 Something is dreadfully wrong, for I feel a deep burning pain in my side. } }
   \line { \large { \hspace #5 Though I am trying to stay in the saddle, } }
   \line { \large { \hspace #5 I'm getting weary, unable to ride. But my love for } }
   \vspace #1
   \line { \large { Felina is strong and I rise where I've fallen. Though I am weary, I can't stop to rest. } }
   \line { \large { I see the white puff of smoke from the rifle. I feel the bullet go deep in my chest. } }
   \vspace #1
   \line { \large { From out of nowhere, Felina has found me, kissing my cheek as she kneels by my side. } }
   \line { \large { Cradled by two loving arms that I'll die for, one little kiss and Felina, goodbye. } }
 }
}

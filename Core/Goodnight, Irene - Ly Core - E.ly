%% -*- Mode: LilyPond -*-

songID = "2026-11-19T00:29:43.572412Z"

\include "../Include/lead-sheets.ily"

headerTitle = "Goodnight, Irene (The Weavers Arrangement)"
headerSubtitle = \subtitle
headerPoet = ""
headerComposer = "Huddie Ledbetter and John A. Lomax"
headerCopyright = "© 1936 Ludlow Music, Inc."

refrainLyrics = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _ _ _
I -- rene, good -- night. __
I -- rene, good -- night.
Good night I -- rene, good -- night, I -- rene, I'll see you in my dreams.

Last Sat -- ur -- day night I got mar -- ried.
Me and my wife set -- tled down.
Now, me and my wife are part -- ed.
I'm gon -- na take an -- oth -- er stroll down -- town.

Good night I -- rene, good -- night, I -- rene, I'll see you in my dreams.
}

refrainChords = \chordmode {
  s4
  
  e2. e2.:7 a2. fs2.:m b2.:7 b2.:7 e2. e2.
  
  e2. e2. b2.:7 b2.:7 b2.:7 b2.:7 e2. e2.
  e2. e2.:7 a2. fs2.:m b2.:7 b2.:7 e2. e2.

  e2. e2. b2.:7 b2.:7 b2.:7 b2.:7 e2. e2.
  e2. e2.:7 a2. fs2.:m b2.:7 b2.:7 e2. e2.

  e2. e2. e2.:7 a2. fs2.:m b2.:7 b2.:7 e2. e2.
}

refrainKey = e

whatKey = #(or whatKey refrainKey)


refrainMelody = \relative f' {
  \time 3/4
  \key \refrainKey \major
  \clef \whatClef
  \tempoFour "Medium [The Weavers 1955]" 144

  \partial 4 gs'4 |

  \sectNoBreak "Intro"
  
  gs2 gs4 | fs2 e4 | fs2 e4 | a,2 cs4 | b2 fs'4 | gs2 fs4 | e2. | R2.*1 |
  
  \bar ".|:-||"
  \repeat volta 4 {

  \sectNoBar "Chorus"
  
  e,2.^"4x" | fs2 e4 | ds2( cs4 | b2.) | fs'2. | gs2 fs4 | e2. | r2 gs4 |
  \xBreak
  gs2 gs4 | fs2 e4 | fs2 e4 | cs2 cs4 | b2 fs'4 |gs2 fs4 | e2. \textToCodaFourthTime | R2.*1 |
  
  \sect "Verse"
  
  e4 e8 e8 es4 | fs4 e4 b4 | d8 fs4.~ fs4 | R2.*1 | b8 b4. b4 | b,4 gs'8 fs8~ fs4 | e2. | r2 b'4 |
  \xBreak
  b8 gs4. gs4 | gs8( fs4.) e4 | cs8 e4.~ e4 | r4 r8 cs8 cs8 cs8 | b4. fs'8 fs8 fs8 | gs2 fs4 | e2. | R2.*1 |

  }

  \bar "||-:|."
  \textCodaBreak
  
  r2 gs4 |
  \repeat volta 2 {
  gs2 gs4 | fs2 e4 | fs2 e4 | cs2 cs4 | b2 fs'4 |gs2 fs4 | e2. | R2.*1 |
  }
}

afterText =
\markup {
  \column
  \bold
  {
   \vspace #2
   \line { \large { Intro } }
   \vspace #1
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Verse 1 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Verse 2 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Verse 3 } }
   \vspace #4
   \line { \large { Chorus } }
   \vspace #4
   \line { \large { Outro } }
   }
  \column
  {
    \hspace #4
    }
  \column
  {
   \vspace #4
   \line { \large { Irene, goodnight } }
   \line { \large { Irene, goodnight } }
   \line { \large { Goodnight, Irene, goodnight, Irene } }
   \line { \large { I'll see you in my dreams } }
   \vspace #1
   \line { \large { Last Saturday night I got married } }
   \line { \large { Me and my wife settle down } }
   \line { \large { Now me and my wife are parted } }
   \line { \large { I'm gonna take another stroll downtown } }
   \vspace #1
   \line { \large { Irene, goodnight } }
   \line { \large { Irene, goodnight } }
   \line { \large { Goodnight, Irene, goodnight, Irene } }
   \line { \large { I'll see you in my dreams } }
   \vspace #1
   \line { \large { Sometimes I live in the country } }
   \line { \large { Sometimes I live in town } }
   \line { \large { Sometimes I take a great notion } }
   \line { \large { To jump in the river and drown } }
   \vspace #1
   \line { \large { Irene, goodnight } }
   \line { \large { Irene, goodnight } }
   \line { \large { Goodnight, Irene, goodnight, Irene } }
   \line { \large { I'll see you in my dreams } }
   \vspace #1
   \line { \large { Stop your rambling, stop your gambling } }
   \line { \large { Stop your staying out so late at night } }
   \line { \large { Go home to your wife and family } }
   \line { \large { Stay there by the fireside bright } }
   \vspace #1
   \line { \large { Irene, goodnight } }
   \line { \large { Irene, goodnight } }
   \line { \large { Goodnight, Irene, goodnight, Irene } }
   \line { \large { I'll see you in my dreams } }
   \vspace #1
   \line { \large { Goodnight, Irene, goodnight, Irene } }
   \line { \large { I'll see you in my dreams } }
   \vspace #1
   \line { \large { Goodnight, Irene, goodnight, Irene } }
   \line { \large { I'll see you in my dreams } }
  }
}

\include "../Include/refrainonly.ily"


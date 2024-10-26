%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Is You Is, or Is You Ain't (Ma' Baby)"
  subtitle = \instrument
  composer = "Billy Austin and Louis Jordan"
  copyright = "© 1944 Leeds Music Corporation"
}

introLyrics = \lyricmode {
}

introHLChords = \chordmode {
  f2:m f2:m/ef df2:7 c2:7
  f2:m f2:m/ef df2:7 c2:7
  %{
  %% Extended intro
  f2:m f2:m/ef df2:7 c2:7
  f2:m f2:m/ef df2:7 c2:7
  f2:m f2:m/ef df2:7 c2:7
  f2:m f2:m/ef df2:7 c2:7
  %}
}

introNicoChords = \chordmode {
  f2:m ef2 df2:7 c2:7
  f2:m ef2 df2:7 c2:7
  %{
  %% Extended intro
  f2:m ef2 df2:7 c2:7
  f2:m ef2 df2:7 c2:7
  f2:m ef2 df2:7 c2:7
  f2:m ef2 df2:7 c2:7
  %}
}

introChords = \introNicoChords

introKey = f

introMelody = \relative g' {
  \time 4/4
  \key \introKey \minor
  \clef \whatClef
  \tempo "Medium" 4 = 117

  \xTextMark \markup{ "Intro" }
  
  <<
    \new Voice
    { \voiceTwo
      f2 ef2 | df2 c2 |
    }
    { \voiceOne
      s4 <c' f af>4 s4 <af c f>4 | s4 <af cf f>4 s4 <g bf e>4^\markup { "cont." } |
    }
  >>
  \oneVoice
  
  \rsq \rsq \rsq \rsq | \rsq \rsq \rsq \rsq |
  \break
  %{
  %% Extended intro
  f8 g8~ g2.~ | g2  af8 g8 f8 df8 | c4. f8 d2 | r2 r4 c4 |
  f8 g8~ g2.~ | g2  af8 g8 f8 df8 | c4. f8 d2 | r1 |
  %}
  
  \bar "||"
}

verseObjectGenderFemaleLyrics = \lyricmode {
  I got -- ta gal who's al -- ways late,
  An -- y time we have a date,
  But I love her, __ Yes I love her. __
  I'm gon -- na walk up to her gate,
  And see if I can get it straight,
  'Cause I want her, __ I'm gon -- na ask her. __
}

verseObjectGenderMaleLyrics = \lyricmode {
  I got -- ta man who's al -- ways late,
  An -- y time we have a date,
  But I love him, __ Yes I love him. __
  I'm gon -- na walk up to his gate,
  And see if I can get it straight,
  'Cause I want him, __ I'm gon -- na ask him. __
}

verseLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  #{ \verseObjectGenderMaleLyrics #}
  #{ \verseObjectGenderFemaleLyrics #} )

verseHLChords = \chordmode {
  f2:m f2:m/ef df2:7 c2:7 f2:m f2:m/ef df2:7 c2:7
  bf1:7 bf1:7 ef1:7 c1:7
  f2:m f2:m/ef df2:7 c2:7 f2:m f2:m/ef df2:7 c2:7
  bf1:7 bf1:7 ef1:7 c1:7
}

verseNicoChords = \chordmode {
  f2:m ef2 df2:7 c2:7 f2:m f2:m/ef df2:7 c2:7
  bf1:7 bf1:7 ef1:7 c1:7
  f2:m ef2 df2:7 c2:7 f2:m f2:m/ef df2:7 c2:7
  bf1:7 bf1:7 ef1:7 c1:7
}

verseChords = \verseNicoChords

verseKey = f

verseMelody = \relative g' {
  \time 4/4
  \key \verseKey \minor
  \clef \whatClef

  \tempo "Medium" 4 = 117
  
  \xTextMark \markup{ "Verse" }
  
  c4 bf8 af8 bf4 af4 | bf8 af4 c4. r4 | r2 bf8 af8 bf8 af8 | bf8 af4 c4. f,8 af8 |
  \break
  c8 c4.~ c2~ | c2. f,8 af8 | c8 c4.~ c2~ | c2. r4 |
  \break
  c4 bf8 af8 bf4 af4 | bf8 af4 c4. r4 | r4 r8 af8 bf8 af8 bf8 af8 | bf8 af4 c4. f,8 af8 |
  \break
  c8 c4.~ c2~ | c2~ c8 f,8 af8 f8 || c'8 c4.~ c2~ | c2. r4 |
  
  \bar "||"
  \pageBreak
}

refrainObjectGenderFemaleLyrics = \lyricmode {
  Is you is, or is you ain't, ma' ba -- by,
  The way you're act -- ing late -- ly makes me doubt. __

  You'se is still my ba -- by, ba -- by,
  Seems my flame in your heart's done gone out. __

  A wo -- man is a crea -- ture that has al -- ways been strange, __
  Just when you're sure of one you find she's gone and made a change. __

  Is you is, or is you ain't, ma' ba -- by,
  May -- be ba -- by's found some -- bod -- y new, __
  Or is ma' ba -- by still ma' ba -- by true. __
}

refrainObjectGenderMaleLyrics = \lyricmode {
  Is you is, or is you ain't, ma' ba -- by,
  The way you're act -- ing late -- ly makes me doubt. __

  You'se is still my ba -- by, ba -- by,
  Seems my flame in your heart's done gone out. __

  A man is just a crea -- ture that has al -- ways been strange, __
  Just when you're sure of one you find he's gone and made a change. __

  Is you is, or is you ain't, ma' ba -- by,
  May -- be ba -- by's found some -- bod -- y new, __
  Or is ma' ba -- by still ma' ba -- by true. __
}

refrainLyrics =
#(if (and (defined? 'objectGenderMale) objectGenderMale)
  #{ \refrainObjectGenderMaleLyrics #}
  #{ \refrainObjectGenderFemaleLyrics #} )

refrainHLChords = \chordmode {
  f2:m c2:7/g f2:m/af c2:7/g f1:m f8*5:m cf4.:13
  bf1:7 bf2:m7 ef2:7 af1:6 df2:7 c2:7

  f2:m c2:7/g f2:m/af c2:7/g f1:m f8*5:m cf4.:13
  bf1:7 bf2:m7 ef2:7 af1:6 ef2:m7 af2:7
  
  df1:maj7 df1:m7 af1:maj7 ef2:m7 af2:7
  df1:maj7 df1:m7 c2:m7.5- f2:7 bf4:m7 \chordSlash 1 g4:m7.5- c4:7

  f2:m c2:7/g f2:m/af c2:7/g f1:m f8*5:m cf4.:13
  bf1:7 bf2:m7 ef2:7 af2:6 gf2:7.5- f1:7

  bf1:7 bf2:m7 ef2:7 af1:6
  \chordOpenParen{ df2:7 }
  \chordCloseParen{ c2:7 }
}

refrainNicoChords = \chordmode {
  f2:m c2:7/g f2:m/af c2:7/g f1:m f8*5:m cf4.:13
  bf1:9 ef1:13 af1:6 c1:7

  f2:m c2:7/g f2:m/af c2:7/g f1:m f8*5:m cf4.:13
  bf1:9 ef1:13 af1:6 af1:7
  
  df1:6 df1:m6 af1:maj7 ef1:m7
  df1:6 df1:m6 c2:m7.5- f2:7 g2:m7.5- c2:7

  f2:m c2:7/g f2:m/af c2:7/g f1:m f8*5:m cf4.:13
  bf1:9 ef1:13 gf1:7 f1:7

  bf1:9 ef1:13 af1:6
  \chordOpenParen{ df2:7 }
  \chordCloseParen{ c2:7 }
}

refrainChords = \refrainNicoChords

refrainKey = f

refrainMelody = \relative g' {
  \time 4/4
  \key \refrainKey \minor
  \clef \whatClef

  \xTextMark \markup{ "Refrain" \bold \box "A1" }
  \set Score.currentBarNumber = #1
  \tempo "Medium" 4 = 117
  
  c4 c4 c4 c4 | c4 c4 c4 bf8 af8~ | af8 f4. r2 | r2 r4 r8 f8 |
  \break
  c'4 c4 c4 c4 | c4 c4 c4 c8 af8~ | af4 r4 r2 | r1 |

  \bar "||"
  \break

  \xTextMark \markup{ \bold \box "A2" }

  c2. c4 | c4 c4 c4 bf8 af8~ | af8 f4. r2 | r1 |
  \break
  c'4 c4 c4 c4 | c4 c4 c4 c8 af8~ | af4 r4 r2 | r2 r4 af4 |

  \bar "||"
  \break
  \xTextMark \markup{ \bold \box "B" }
  
  bf8 af4. bf4 af4 | bf8 af4. bf4 af8 c8~ | c8 ef,4.~ ef4 f8 gf8~ | gf2. af4 |
  \break
  bf4 af4 bf4 af4 | bf4 af4 bf4 af4 | c4 c4 c4 c8 c8~ | c4 r4 r2 |

  \bar "||"
  \break
  \xTextMark \markup{ \bold \box "A3" }

  c4 c4 c4 c4 | c4 c4 c4 bf8 af8~ | af8 f4. r2 | r1 |
  \break
  c'4 c4 c4 c4 | c4 c4 c8 c4 c8~ | c1~ | c2. f,4 |
  \break
  c'4 c4 c4 c4 | c4 c4 c8 c4 af8~ | af1 | r1 |

  \bar "|."
}

refrainKicksOverTime = \relative f' {
  s1*3 f4 f4 f8 f4. s1*4
  s1*3 f4 f4 f8 f4. s1*4
  s1*8
  s1*3 f4 f4 f8 f4.
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/intro.ily"

\include "../Include/verse.ily"

\include "../Include/refrain-with-kicks.ily"

%% -*- Mode: LilyPond -*-

\include "../Include/lead-sheets.ily"

\header {
  title = "Last Thing I Needed First Thing This Morning"
  subtitle = \instrument
  poet = ""
  composer = "Gary Nunn and Donna Farar"
  copyright = \markup \small { \now " " "© 1982 Nunn Publishing Co." }
}

straightEighths = ##t

refrainLyrics = \lyricmode {
  Post -- man de -- liv -- ered
  the past due bill no -- tice.
  The a -- larm clock rang two ho -- urs late.
  
  The gar -- bage man left all the trash on the side -- walk
  and the hing -- es fell off of the gate.
  
  This morn -- ing at break -- fast,
  spilled all the cof -- fee.
  And I o -- pened the door on my knees.
  
  But the last thing I need -- ed the first thing this morn -- ing
  was to have you walk out on me.
  
  Last night you came home late.
  I knew you'd been drink -- ing
  by that old mel -- low look on your face.
  
  I thought, It don't mat -- ter 'cause it's the hol -- i -- day sea -- son.
  and you filled such a big emp -- ty space.
  
  Then I laid down be -- side you and I want -- ed your lov -- ing
  'cause your love makes my life com -- plete.
  
  Oh, the last thing I need -- ed the first thing this morn -- ing
  was to have you walk out on me.

  So ex -- cuse me for look -- ing like my world just end -- ed.
  And ex -- cuse me for look -- ing like I just lost my best friend.
  And ex -- cuse me for lov -- ing and be -- ing for -- giv -- en,
  just go on if you want to be free.
  
  The last thing I need -- ed first thing this morn -- ing
  was to have you walk out on me.

  Oh, the
  
  me.
}

refrainChords = \chordmode {
  e2. e4. e4. e8 e4:sus e4.:sus e2. e4. e4. e8 e4:sus e4.:sus
  e2. e4. e4. e8 e4:sus e4.:sus e2. e4. e2. e4.
  
  e2. e4. e2. e4. b2. b4.
  b2. bf4. a2. a4. e2. e4. b2. b4. b2. b4./ds
  e2. e4. e2./gs e4./gs b2. b4. b2. b4.
  a2. a4. e2. e4. b2. b4. b4. cs4.:m7 b4./fs
  a2. a4. e2./gs e4./gs a2. a4. e2./gs e4./gs e2. e4.
  b2./ds b4./ds cs2.:m cs4.:m e2./b e4./gs a2. a4.
  a4. a4.:sus2 a4.
  
  e2. e4. cs2.:m cs4.:m b4. e4./b b4.:7 e2./b b4.
  e2. e4.:sus e4. fs4.:m7 e4./gs a2. a4. a2. a4.
  
  e2. e4. cs2.:m cs4.:m b2. e4./gs b2. b4.
  e2. e4.:sus b4. cs4.:m7 b4.:9/ds
  
  e2. e4. e4. fs4.:m/e e4. b2. b4. b2. b4./bf
  a2. a4. e2. e4. b2. b4. b4. b4./fs b4./gs e2. e4. e2. cs4.:m
  b2. b4. b2. b4./bf a2. a4. e2. e4. b2. b4. b4. fs4.:m7 gs4.:m7
  a2. a4. e2./gs e4./gs a2. a4./e
  e2./gs e4./gs e2. e4. b2./ds b4./ds
  cs2.:m cs4.:m e2./b e4./gs
  
  a2. a4. d4./a a2. e2. e4. cs2.:m cs4.:m
  b4. e4./b b4.:7 e2./b b4. e2. fs4.:m/e e4. fs4.:m7 e4./gs
  a2. a4. fs2.:m7 fs4.:m7 a2. a4./cs fs2.:m7 fs4.:m7 e2. e4.
  
  e4. fs4.:m7 e4./gs a2. a4./cs fs2.:m7 fs4.:m7
  a2. a4./cs fs2.:m7 fs4.:m7 e2. fs4.:m/e
  
  e4. fs4.:m7 e4./gs a2. a4./cs fs2.:m7 fs4.:m7
  a2. a4. fs2.:m7 fs4.:m7 e2. e4.
  
  e4. fs4.:m7 e4./gs
  
  a2. a4. a2. a4. e2. e4. cs2.:m cs4.:m
  b4. e4./b b4.:7 e2./b b4.
  
  e2. e4.:sus e4. fs4.:m7 e4./gs
  
  e4. cs4.:m7 b4.:7sus e2. e4.
}

refrainKey = e

refrainMelody = \relative f' {
  \time 9/8
  \key \refrainKey \major
  \clef \whatClef
  \tempo "Ballad [Willie Nelson 1982]" 4 = 65

  \xTextMark \markup "Intro"

  R8*9 |
  r4. r8 r4 r4. |
  R8*9 |
  r4. r8 r4 r4. |
  R8*9 |
  r4. r8 r4 r4. |
  R8*9 |
  R8*9 |

  \bar "||-||"
  \break

  \xTextMark \markup "Verse"

  r4. gs8 b8. b16 cs8 cs4 |
  R8*9 |
  r4. r16 fs,16 gs4 b8. b16~ b8 |
  cs8 b4 r4. r4. |
  
  \break
  
  r4. r8 e,8 e8 cs'8. cs16~ cs8 |
  cs8( b8) cs8 b4. fs8( e8 fs8) |
  fs4. r4. r4. |
  R8*9 |

  \bar "||-||"
  \break

  r4. r4 e8 gs8 b8 b8 |
  cs8 b4~ b4.~ b8 b8 b16( gs16 |
  fs4.) r4. r8 fs8 fs8 |
  cs'8 b8( cs8) r4. r4. |
  
  \break

  r4. r4 e,16 e16 cs'8 cs8 cs16( b16) |
  cs8 b4~( b8 gs8 fs8 e8) e8 fs8~ |
  fs4. r4. r4. |
  R8*9 |

  \bar "||"

  \xPageBreak

  \xTextMark \markup "Pre-Chorus"

  r4. r8 e8 cs'8 e8 e8 fs8 |
  e4. r4. r4. |
  r4. r8 cs4 e8 cs8 fs8 |
  e4. r4. r4 e,16 e16 |
  
  \break

  b'8 b4~ b4.~ b8 b8 b8~ |
  b8 b4~ b4 cs8 gs4. |
  R8*9 |
  r4. r4 gs8~ gs8 a16 a8. |

  \bar "||-||"
  \break

  \xTextMark \markup "Chorus"

  a2.~ a8 a8 fs8 |
  e4. r4. r4 e8 |
  gs4 gs8~ gs4.~ gs8 gs8 fs8 |
  e4. r4. r8 e8 e8 |
  
  \break

  fs4. gs4. a4. |
  gs2. gs8( fs8) e8~ |
  e4. r4. r4. |
  R8*9 |

  \bar "||-||"
  \break

  \xTextMark \markup "Solo - Chorus"
  \repeat unfold 8 { R8*9 | }

  \bar "||"

  \xPageBreak
  \xTextMark \markup "Verse"

  r4. r4 gs8 b8. b16 b8 |
  cs4 b8~ b4. r4. |
  r4. r8 fs8 b8~ b8 b8 b8 |
  cs8 b16( a16 fs8) r4. r8 cs'8 cs8 |
  
  \break
  
  cs2.~ cs8 cs8 b8 |
  cs8 b4~( b8 gs8 fs8 e4) fs8 |
  fs4. r4. r4. |
  R8*9 |

  \bar "||-||"
  \break

  r4. r4 e8 gs8 b8 b8 |
  cs8( b8) cs8 r4. r4. |
  r4. r8. e,16 fs16 e16 gs16 b16 b4 |
  cs8( b8) cs8 r4. r4. |
  
  \break
  
  r4. r8 e,16 e16 cs'8~ cs8 cs8 b8 |
  cs8 b4~ b4. fs8( e8 fs8) |
  fs4. r4. r4. |
  r4. r4. r8 b8 b8 |

  \bar "||-||"
  \break

  \xTextMark \markup "Pre-Chorus"

  cs4 e8~ e4. r8 cs8 gs'8~( |
  gs4 fs8) e4. r8 b8 b8 |
  cs8 e4~ e8 gs4~ gs4 fs8 |
  e4. r4. r4 b8 |
  
  \break

  b8 b4~ b4.~ b8 b8 cs8 |
  b8( a4~ a4.) r8 gs8 gs8~ |
  gs2. r4. |
  r4. r4. a8 a8 a8 |

  \bar "||-||"
  \break

  \xTextMark \markup "Chorus"
  
  a2.~ a8 a8 a8 |
  a4. r4. r4 e8 |
  gs4 gs8~ gs4.~ gs8 gs8 fs8 |
  e4. r4. r8 e8 e8 |
  
  \break
  
  fs4. gs4. a4. |
  gs2. fs8( e8) e8~ |
  e4. r4. r4. |
  r4. r4. r8 b'8 b8 |

  \bar "||"

  \xPageBreak

  \xTextMark \markup "Bridge"

  cs4 e8~ e4.~ e8 cs8 fs8 |
  e4. r4. r4. |
  r4. r4 cs8~ cs8 e4 |
  e8( ds8 cs8 b4.) a8 b8( a8) |

  \break
  
  gs4. r4. r4. |
  r4. r4. r8 b8 b8 |
  cs4 e8~ e4.~ e4 e8 |
  fs8 e16( cs16 b16 a16) r4. r4. |

  \bar "||-||"
  \break

  r4. r4 cs8~ cs8 e8 e8 |
  ds8( cs8 b8~ b4) b8~ b8 b4 |
  gs8( fs8 e8) r4. r4. |
  r4. r4. r4 b'16 b16 |
  
  \break

  cs4 e8~ e4.~ e8 cs8 fs8 |
  e4. r8 cs8 cs16 cs16 gs'4. |
  fs8 e4 r4 cs8~ cs8 e4 |
  e8( ds8 cs8 b4) b16 b16 cs8 b8 b8 |

  b16( a16 gs4) r4. r4. |
  r4. r4. r4 gs8 |

  \bar "||-||"
  \break

  \bar ".|:"
  \xTextMark \markup "Chorus"
  \repeat volta 2 {

    a4 a8~ a4.~ a8 a8 fs8 |
    e4. r4. r4. |
    gs4 gs8~ gs4.~ gs8 b8 fs8 |
    e4. r4. r8 e8 e8 |
    
    \break
    
    fs4. gs4. a4. |
    gs2.  gs8( fs8 e8) |

    \alternative { \volta 1
    { 
      e4. r4. r4. |
      r4. r4. r8 b'8 b8 |
    } \volta 2
    { 
      e,4. r4. r4. |
      R8*9 |
    } } }

  \bar "|."
}

\include "../Include/paper.ily"

\markup {
  % Leave a gap after the header
  \vspace #1
}

\include "../Include/refrain.ily"

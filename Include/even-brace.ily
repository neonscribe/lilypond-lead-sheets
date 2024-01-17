dropLyrics = {
  \override LyricText.extra-offset = #'(0 . -1)
  \override LyricHyphen.extra-offset = #'(0 . -1)
  \override LyricExtender.extra-offset = #'(0 . -1)
  \override StanzaNumber.extra-offset = #'(0 . -1)
}

doneDropping = {
  \revert LyricText.extra-offset
  \revert LyricHyphen.extra-offset
  \revert LyricExtender.extra-offset
  \revert StanzaNumber.extra-offset
}

leftbrace = \set stanza = \markup {
  \hspace #1
  \translate #'(0 . -0.6) \left-brace #25 }

rightbrace = \set stanza = \markup {
  \hspace #1
  \translate #'(0 . 0.4) \right-brace #25 }

%%% lyricsbeforebrace = \lyricmode { Here are some ly -- rics }

%%% lyricsfrombrace = \lyricmode { Here come some more }

%%% melody = \relative c' { c d e f  g r4 f e d c }

%%% \score{
%%%   <<
%%%      \new Voice = m {\autoBeamOff \melody} 
%%%     \new Lyrics \lyricsto m  {\leftbrace \lyricsbeforebrace \rightbrace  \dropLyrics \lyricsfrombrace}
%%%     \new Lyrics \lyricsto m { \lyricsbeforebrace  }
%%%   >>
%%% }

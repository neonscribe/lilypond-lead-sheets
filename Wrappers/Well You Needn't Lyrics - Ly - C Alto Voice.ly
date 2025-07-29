%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Judy Niemack Key"
whatKey = c
whatClef = "treble_8"

showLyrics = ##t

\include "../Core/Well You Needn't - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Well You Needn't Lyrics - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Well You Needn't Lyrics - Ly - C Alto Voice"}

%}

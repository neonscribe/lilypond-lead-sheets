%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Chris Connor Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Witchcraft - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Witchcraft - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Witchcraft - Ly - C Alto Voice"}

%}

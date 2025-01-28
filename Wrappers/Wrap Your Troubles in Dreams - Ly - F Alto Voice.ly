%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "June Christy (with Stan Kenton) Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Wrap Your Troubles in Dreams - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Wrap Your Troubles in Dreams - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Wrap Your Troubles in Dreams - Ly - F Alto Voice"}

%}

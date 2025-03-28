%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Diahann Carroll Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/A Fine Romance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Fine Romance - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/A Fine Romance - Ly - G Alto Voice"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Vera Lynn Key"
whatKey = g,
whatClef = "treble"

\include "../Core/A Kiss to Build a Dream On - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Kiss to Build a Dream On - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/A Kiss to Build a Dream On - Ly - G Alto Voice"}

%}

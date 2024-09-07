%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Rosemary Clooney Key"
whatKey = g,
whatClef = "treble"

\include "../Core/Too Close for Comfort - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Close for Comfort - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Too Close for Comfort - Ly - G Alto Voice"}

%}

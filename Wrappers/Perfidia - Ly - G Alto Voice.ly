%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Linda Ronstadt Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Perfidia - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Perfidia - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Perfidia - Ly - G Alto Voice"}

%}

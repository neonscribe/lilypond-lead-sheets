%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Etta James Key"
whatKey = f,
whatClef = "treble"

\include "../Core/At Last - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{At Last - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/At Last - Ly - F ALto Voice"}

%}

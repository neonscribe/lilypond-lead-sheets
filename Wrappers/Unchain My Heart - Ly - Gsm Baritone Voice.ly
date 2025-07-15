%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ray Charles Key"
whatKey = gs
whatClef = "treble"

\include "../Core/Unchain My Heart - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Unchain My Heart - G\#m}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Unchain My Heart - Ly - Gsm Baritone Voice"}

%}

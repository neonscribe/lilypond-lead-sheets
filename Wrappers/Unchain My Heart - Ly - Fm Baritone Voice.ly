%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Trini Lopez Key"
whatKey = f
whatClef = "treble"

\include "../Core/Unchain My Heart - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Unchain My Heart - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Unchain My Heart - Ly - Fm Baritone Voice"}

%}

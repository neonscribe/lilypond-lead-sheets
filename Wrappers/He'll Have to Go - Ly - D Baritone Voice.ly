%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eddy Arnold, Elvis Presley Key"
whatKey = d
whatClef = "treble"

\include "../Core/He'll Have to Go - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{He'll Have to Go - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/He'll Have to Go - Ly - D Baritone Voice"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sonny James Key"
whatKey = c
whatClef = "treble"

\include "../Core/He'll Have to Go - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{He'll Have to Go - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/He'll Have to Go - Ly - C Baritone Voice"}

%}

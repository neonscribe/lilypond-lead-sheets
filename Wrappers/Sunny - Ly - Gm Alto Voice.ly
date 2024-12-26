%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dusty Springfield Key"
whatKey = g
whatClef = "treble_8"

\include "../Core/Sunny - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sunny - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Sunny - Ly - Gm Alto Voice"}

%}

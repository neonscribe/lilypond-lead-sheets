%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Carmen McRae Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Day by Day - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Day by Day - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Day by Day - Ly - C Alto Voice"}

%}

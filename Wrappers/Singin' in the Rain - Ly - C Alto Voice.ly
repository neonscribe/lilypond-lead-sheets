%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Singin' in the Rain - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Singin' in the Rain - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Singin' in the Rain - Ly - C Alto Voice"}

%}

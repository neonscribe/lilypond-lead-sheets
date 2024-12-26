%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Peggy Lee Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/The Christmas Song - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Christmas Song - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The Christmas Song - Ly - G Alto Voice"}

%}

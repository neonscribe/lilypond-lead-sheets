%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Solitude - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Solitude - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Solitude - Ly - G Alto Voice"}

%}

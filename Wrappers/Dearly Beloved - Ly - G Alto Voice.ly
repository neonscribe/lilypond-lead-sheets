%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "June Christy Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Dearly Beloved - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dearly Beloved - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Dearly Beloved - Ly - G Alto Voice"}

%}

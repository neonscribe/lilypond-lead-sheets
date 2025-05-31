%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Chris Connor Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/My Shining Hour - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Shining Hour - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/My Shining Hour - Ly - G Alto Voice"}

%}

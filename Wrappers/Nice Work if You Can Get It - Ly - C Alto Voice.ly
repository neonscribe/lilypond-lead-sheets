%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Nice Work if You Can Get It - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nice Work if You Can Get It - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Nice Work if You Can Get It - Ly - C Alto Voice"}

%}

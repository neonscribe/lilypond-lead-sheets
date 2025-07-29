%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = f
whatClef = "treble_8"

\include "../Core/September Song - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{September Song - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/September Song - Ly - F Alto Voice"}

%}

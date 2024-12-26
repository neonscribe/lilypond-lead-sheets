%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day, Cleo Laine Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/April in Paris - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{April in Paris - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/April in Paris - Ly - G Alto Voice"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dinah Washington Key"
whatKey = af,
whatClef = "treble"

\include "../Core/September in the Rain - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{September in the Rain - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/September in the Rain - Ly - Ab Alto Voice"}

%}

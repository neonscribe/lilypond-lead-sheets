%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = f,
whatClef = "treble"

\include "../Core/Three Little Words - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Three Little Words - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Three Little Words - Ly - F Alto Voice"}

%}

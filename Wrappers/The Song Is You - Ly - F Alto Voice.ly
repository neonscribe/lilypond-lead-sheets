%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/The Song Is You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Song Is You - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The Song Is You - Ly - F Alto Voice"}

%}

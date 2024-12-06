%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day, Ella Fitzgerald, June Christy Key"
whatKey = f,
whatClef = "treble"

\include "../Core/Bewitched - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bewitched - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Bewitched - Ly - F Alto Voice"}

%}

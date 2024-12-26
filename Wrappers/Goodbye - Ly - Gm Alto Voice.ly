%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "June Christy, Linda Ronstadt Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Goodbye - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Goodbye - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Goodbye - Ly - Gm Alto Voice"}

%}

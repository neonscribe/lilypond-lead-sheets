%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Rosemary Clooney (with Benny Goodman) Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Goodbye - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Goodbye - Fm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Goodbye - Ly - Fm Alto Voice"}

%}

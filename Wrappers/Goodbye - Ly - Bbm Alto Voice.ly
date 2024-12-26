%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Julie London Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Goodbye - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Goodbye - Bbm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Goodbye - Ly - Bbm Alto Voice"}

%}

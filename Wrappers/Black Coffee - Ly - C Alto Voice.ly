%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Black Coffee - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Black Coffee - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Black Coffee - Ly - C Alto Voice"}

%}

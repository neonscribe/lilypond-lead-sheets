%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Pick Yourself Up - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Pick Yourself Up - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Pick Yourself Up - Ly - C Alto Voice"}

%}

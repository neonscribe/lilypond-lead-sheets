%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Just One of Those Things - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Just One of Those Things - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Just One of Those Things - Ly - C Alto Voice"}

%}

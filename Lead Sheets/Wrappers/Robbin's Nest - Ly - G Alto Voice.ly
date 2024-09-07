%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = g,
whatClef = "treble"

\include "../Core/Robbin's Nest - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Robbin's Nest - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Robbin's Nest - Ly - G Alto Voice"}

%}

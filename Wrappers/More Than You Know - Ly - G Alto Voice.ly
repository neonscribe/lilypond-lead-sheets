%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ruth Etting, Billie Holiday, Ella Fitzgerald Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/More Than You Know - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{More Than You Know - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/More Than You Know - Ly - G Alto Voice"}

%}

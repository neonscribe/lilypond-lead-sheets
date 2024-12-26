%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Helen Merrill Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Beautiful Love - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Beautiful Love - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Beautiful Love - Ly - Gm Alto Voice"}

%}

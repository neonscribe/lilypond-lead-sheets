%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/They All Laughed - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{They All Laughed - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/They All Laughed - Ly - Bb Alto Voice"}

%}

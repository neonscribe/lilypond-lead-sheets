%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Peggy Lee Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Close Your Eyes - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Close Your Eyes - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Close Your Eyes - Ly - Gm Alto Voice"}

%}

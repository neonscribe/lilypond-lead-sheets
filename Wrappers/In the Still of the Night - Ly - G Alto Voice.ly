%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Julie London Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/In the Still of the Night - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In the Still of the Night - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/In the Still of the Night - Ly - G Alto Voice"}

%}

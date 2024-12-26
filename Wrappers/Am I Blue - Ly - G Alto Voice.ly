%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Julie London Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Am I Blue - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Am I Blue - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Am I Blue - Ly - G Alto Voice"}

%}

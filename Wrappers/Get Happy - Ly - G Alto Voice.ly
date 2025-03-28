%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Judy Garland Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Get Happy - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Get Happy - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Get Happy - Ly - G Alto Voice"}

%}

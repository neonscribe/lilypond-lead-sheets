%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Get Happy - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Get Happy - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Get Happy - Ly - Bb Alto Voice"}

%}

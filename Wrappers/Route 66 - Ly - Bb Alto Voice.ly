%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Patti Page Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Route 66 - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Route 66 - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Route 66 - Ly - Bb Alto Voice"}

%}

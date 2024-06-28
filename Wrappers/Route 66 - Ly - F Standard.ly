%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Route 66 - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Route 66 - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Route 66 - Ly - F Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble_8"

\include "../Core/Route 66 Guitar Solo - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Route 66 Guitar Solo - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Route 66 Guitar Solo - Ly - F Standard"}

%}

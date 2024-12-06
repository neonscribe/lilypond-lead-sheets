%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble_8"

\include "../Core/Route 66 Guitar Solo - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Route 66 Guitar Solo - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Route 66 Guitar Solo - Ly - G Standard"}

%}

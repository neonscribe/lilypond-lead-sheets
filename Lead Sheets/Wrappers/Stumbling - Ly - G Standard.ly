%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Stumbling - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stumbling - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Stumbling - Ly - G Standard"}

%}

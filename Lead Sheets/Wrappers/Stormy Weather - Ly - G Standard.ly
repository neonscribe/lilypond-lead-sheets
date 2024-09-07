%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Stormy Weather - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stormy Weather - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Stormy Weather - Ly - G Standard"}

%}

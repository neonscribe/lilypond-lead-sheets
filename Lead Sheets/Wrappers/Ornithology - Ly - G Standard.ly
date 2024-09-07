%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Ornithology - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ornithology - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Ornithology - Ly - G Standard"}

%}

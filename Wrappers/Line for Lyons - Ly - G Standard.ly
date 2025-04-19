%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Line for Lyons - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Line for Lyons - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Line for Lyons - Ly - G Standard"}

%}

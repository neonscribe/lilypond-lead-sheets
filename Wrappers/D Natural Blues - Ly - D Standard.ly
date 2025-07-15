%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/D Natural Blues - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{D Natural Blues - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/D Natural Blues - Ly - D Standard"}

%}

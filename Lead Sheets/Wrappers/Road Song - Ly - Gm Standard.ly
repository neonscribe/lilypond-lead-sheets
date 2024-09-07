%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Road Song - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Road Song - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Road Song - Ly - Gm Standard"}

%}

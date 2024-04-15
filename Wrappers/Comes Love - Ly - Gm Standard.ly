%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Comes Love - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Comes Love - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Comes Love - Ly - Gm Standard"}

%}

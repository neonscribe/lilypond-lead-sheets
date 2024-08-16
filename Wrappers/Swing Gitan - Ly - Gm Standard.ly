%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Swing Gitan - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Swing Gitan - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Swing Gitan - Ly - Gm Standard"}

%}

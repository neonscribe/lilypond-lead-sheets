%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Wave - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Wave - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Wave - Ly - D Standard"}

%}

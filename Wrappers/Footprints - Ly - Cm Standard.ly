%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Footprints - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Footprints - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Footprints - Ly - Cm Standard"}

%}

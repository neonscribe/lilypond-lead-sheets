%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Too Darn Hot - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Darn Hot - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Too Darn Hot - Ly - Cm Standard"}

%}

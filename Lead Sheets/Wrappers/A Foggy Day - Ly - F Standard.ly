%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/A Foggy Day - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Foggy Day (In London Town) - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/A Foggy Day - Ly - F Standard"}

%}

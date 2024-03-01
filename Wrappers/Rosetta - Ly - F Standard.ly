%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Rosetta - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Rosetta - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Rosetta - Ly - F Standard"}

%}

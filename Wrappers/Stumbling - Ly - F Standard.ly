%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Two Parts, in F"
whatKey = f
whatClef = "treble"

\include "../Core/Stumbling - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stumbling - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Stumbling - Ly - F Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Django Key"
whatKey = f
whatClef = "treble"

\include "../Core/Rose Room - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Rose Room - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Rose Room - Ly - F Standard"}

%}

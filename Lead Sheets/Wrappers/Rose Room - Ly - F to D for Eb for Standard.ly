%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Django Key"
whatKey = d
whatClef = "treble"

\include "../Core/Rose Room - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Rose Room - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Rose Room - Ly - F to D for Eb for Standard"}

%}

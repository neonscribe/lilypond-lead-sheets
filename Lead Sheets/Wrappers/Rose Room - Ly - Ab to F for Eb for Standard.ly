%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/Rose Room - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Rose Room - Ab to F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Rose Room - Ly - Ab to F for Eb for Standard"}

%}

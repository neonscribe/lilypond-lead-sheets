%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = af
whatClef = "treble"

\include "../Core/Rose Room - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Rose Room - A♭}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Rose Room - Ly - Ab Standard"}

%}

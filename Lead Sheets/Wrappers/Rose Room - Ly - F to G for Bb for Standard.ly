%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Django Key"
whatKey = g
whatClef = "treble"

\include "../Core/Rose Room - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Rose Room - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Rose Room - Ly - F to G for Bb for Standard"}

%}

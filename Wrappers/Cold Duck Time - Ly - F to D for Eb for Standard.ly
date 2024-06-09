%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
bassKey = d'
whatClef = "treble"

\include "../Core/Cold Duck Time - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cold Duck Time - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Cold Duck Time - Ly - F to D for Eb for Standard"}

%}

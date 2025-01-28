%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Wrap Your Troubles in Dreams - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Wrap Your Troubles in Dreams - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Wrap Your Troubles in Dreams - Ly - C to A for Eb for Standard"}

%}

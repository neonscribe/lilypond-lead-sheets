%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Secret Love - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Secret Love - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Secret Love - Ly - Eb to C for Eb for Standard"}

%}

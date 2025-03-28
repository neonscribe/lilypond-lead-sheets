%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Secret Love - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Secret Love - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Secret Love - Ly - Eb Standard"}

%}

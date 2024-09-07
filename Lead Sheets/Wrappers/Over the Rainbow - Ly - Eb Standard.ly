%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Over the Rainbow - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Over the Rainbow - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Over the Rainbow - Ly - Eb Standard"}

%}

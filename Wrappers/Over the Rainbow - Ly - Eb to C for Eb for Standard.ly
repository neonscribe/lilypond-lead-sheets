%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Over the Rainbow - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Over the Rainbow - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Over the Rainbow - Ly - Eb to C for Eb for Standard"}

%}

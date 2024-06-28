%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Where or When - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Where or When - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Where or When - Ly - Eb to C for Eb for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Where or When - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Where or When - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Where or When - Ly - Eb Standard"}

%}

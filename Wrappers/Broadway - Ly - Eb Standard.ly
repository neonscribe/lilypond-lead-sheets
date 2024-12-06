%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Broadway - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Broadway - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Broadway - Ly - Eb Standard"}

%}

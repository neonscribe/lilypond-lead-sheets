%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Dindi - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dindi - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Dindi - Ly - Eb Standard"}

%}

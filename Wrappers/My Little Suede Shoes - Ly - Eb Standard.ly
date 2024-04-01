%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/My Little Suede Shoes - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Little Suede Shoes - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/My Little Suede Shoes - Ly - Eb Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/My Little Suede Shoes - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Little Suede Shoes - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/My Little Suede Shoes - Ly - Eb to C for Eb for Standard"}

%}

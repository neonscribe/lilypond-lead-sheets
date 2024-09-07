%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Dindi - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dindi - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Dindi - Ly - Eb to C for Eb for Standard"}

%}

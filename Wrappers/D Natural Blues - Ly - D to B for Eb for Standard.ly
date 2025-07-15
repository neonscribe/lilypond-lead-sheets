%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/D Natural Blues - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{D Natural Blues - D to B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/D Natural Blues - Ly - D to B for Eb for Standard"}

%}

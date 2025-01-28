%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/O Pato - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{O Pato - D to B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/O Pato - Ly - D to B for Eb for Standard"}

%}

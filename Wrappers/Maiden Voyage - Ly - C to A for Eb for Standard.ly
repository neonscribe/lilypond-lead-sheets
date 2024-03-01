%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Maiden Voyage - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Maiden Voyage - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Maiden Voyage - Ly - C to A for Eb for Standard"}

%}

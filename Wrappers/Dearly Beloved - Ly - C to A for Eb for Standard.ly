%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Dearly Beloved - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dearly Beloved - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Dearly Beloved - Ly - C to A for Eb for Standard"}

%}

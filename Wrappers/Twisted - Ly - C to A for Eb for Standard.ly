%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Twisted - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Twisted - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Twisted - Ly - C to A for Eb for Standard"}

%}

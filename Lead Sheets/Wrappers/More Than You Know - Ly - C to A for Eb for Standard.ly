%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/More Than You Know - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{More Than You Know - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/More Than You Know - Ly - C to A for Eb for Standard"}

%}

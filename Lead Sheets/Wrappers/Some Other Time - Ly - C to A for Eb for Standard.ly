%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Some Other Time - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Some Other Time - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Some Other Time - Ly - C to A for Eb for Standard"}

%}

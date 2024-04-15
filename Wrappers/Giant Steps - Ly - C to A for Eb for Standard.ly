%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Giant Steps - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Giant Steps - for Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Giant Steps - Ly - C to A for Eb for Standard"}

%}

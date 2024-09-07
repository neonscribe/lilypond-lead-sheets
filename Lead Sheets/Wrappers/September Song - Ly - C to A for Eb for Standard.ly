%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a'
whatClef = "treble"

\include "../Core/September Song - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{September Song - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/September Song - Ly - C to A for Eb for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Lover Waltz - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lover (3/4) - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Lover Waltz - Ly - C to A for Eb for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Sometime Ago - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sometime Ago - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Sometime Ago - Ly - C to A for Eb for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/It's a Sin to Tell a Lie - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's a Sin to Tell a Lie - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/It's a Sin to Tell a Lie - Ly - C to A for Eb for Standard"}

%}

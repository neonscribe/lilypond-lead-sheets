%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Half Nelson - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Half Nelson - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Half Nelson - Ly - C to A for Eb for Standard"}

%}

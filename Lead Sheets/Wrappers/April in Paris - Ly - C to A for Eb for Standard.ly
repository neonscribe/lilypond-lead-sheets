%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/April in Paris - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{April in Paris - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/April in Paris - Ly - C to A for Eb for Standard"}

%}

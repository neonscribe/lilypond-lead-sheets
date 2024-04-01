%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Transposed for Eb instruments"
whatKey = a
whatClef = "treble"

\include "../Core/Jazz Blues Sharp Keys - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jazz Blues Sharp Keys}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Jazz Blues Sharp Keys - Ly - C to A for Eb for Standard"}

%}

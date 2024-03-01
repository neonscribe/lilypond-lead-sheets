%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/J'Attendrai - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{J'Attendrai - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/J'Attendrai - Ly - C to A for Eb for Standard"}

%}

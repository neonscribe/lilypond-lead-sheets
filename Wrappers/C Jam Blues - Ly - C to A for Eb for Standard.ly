%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a,
whatClef = "treble"

\include "../Core/C Jam Blues - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{C Jam Blues - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/C Jam Blues - Ly - C to A for Eb for Standard"}

%}

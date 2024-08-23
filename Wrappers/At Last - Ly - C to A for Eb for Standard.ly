%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/At Last - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{At Last - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/At Last - Ly - C to A for Eb for Standard"}

%}

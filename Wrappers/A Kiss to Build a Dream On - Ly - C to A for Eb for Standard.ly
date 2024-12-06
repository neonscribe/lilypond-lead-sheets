%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/A Kiss to Build a Dream On - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Kiss to Build a Dream On - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/A Kiss to Build a Dream On - Ly - C to A for Eb for Standard"}

%}

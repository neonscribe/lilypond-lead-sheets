%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alternate Key"
whatKey = ef,
whatClef = "treble"

\include "../Core/Love Walked In - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love Walked In - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Love Walked In - Ly - Eb Standard"}

%}

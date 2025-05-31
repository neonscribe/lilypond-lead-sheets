%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Love Walked In - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love Walked In - C to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Love Walked In - Ly - C to A for Eb for Standard"}

%}

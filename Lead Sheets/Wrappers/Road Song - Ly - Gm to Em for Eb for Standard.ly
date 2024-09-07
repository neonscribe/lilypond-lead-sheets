%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Road Song - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Road Song - Gm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Road Song - Ly - Gm to Em for Eb for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Swing Gitan - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Swing Gitan - Gm to Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Swing Gitan - Ly - Gm to Em for Eb for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Bernie's Tune - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bernie's Tune - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bernie's Tune - Ly - Dm Standard"}

%}

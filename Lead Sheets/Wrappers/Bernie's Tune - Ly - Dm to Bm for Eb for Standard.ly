%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/Bernie's Tune - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bernie's Tune - Dm to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Bernie's Tune - Ly - Dm to Bm for Eb for Standard"}

%}

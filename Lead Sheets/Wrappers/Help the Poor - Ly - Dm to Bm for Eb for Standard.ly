%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b,
whatClef = "treble"

\include "../Core/Help the Poor - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Help the Poor - Dm to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Help the Poor - Ly - Dm to Bm for Eb for Standard"}

%}

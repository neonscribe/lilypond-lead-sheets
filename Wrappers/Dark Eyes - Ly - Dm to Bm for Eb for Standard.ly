%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b,
whatClef = "treble"

\include "../Core/Dark Eyes - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dark Eyes - Dm to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Dark Eyes - Ly - Dm to Bm for Eb for Standard"}

%}

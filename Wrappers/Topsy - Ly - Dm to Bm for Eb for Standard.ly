%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/Topsy - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Topsy - Dm to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Topsy - Ly - Dm to Bm for Eb for Standard"}

%}

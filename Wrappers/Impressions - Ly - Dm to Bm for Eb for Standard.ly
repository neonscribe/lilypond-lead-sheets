%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b,
whatClef = "treble"

\include "../Core/Impressions - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Impressions - Dm to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Impressions - Ly - Dm to Bm for Eb for Standard"}

%}

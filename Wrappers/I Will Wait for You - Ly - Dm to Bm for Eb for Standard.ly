%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/I Will Wait for You - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Will Wait for You - Dm to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/I Will Wait for You - Ly - Dm to Bm for Eb for Standard"}

%}

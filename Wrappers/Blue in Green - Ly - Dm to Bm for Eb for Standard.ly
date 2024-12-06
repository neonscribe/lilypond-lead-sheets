%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b,
whatClef = "treble"

\include "../Core/Blue in Green - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue in Green - Dm to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Blue in Green - Ly - Dm to Bm for Eb for Standard"}

%}

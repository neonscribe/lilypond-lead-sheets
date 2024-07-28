%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b,
whatClef = "treble"

\include "../Core/Besame Mucho - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Besame Mucho - Dm to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Besame Mucho - Ly - Dm to Bm for Eb for Standard"}

%}

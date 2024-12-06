%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b
whatClef = "treble"

\include "../Core/Midnight in Moscow - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Midnight in Moscow - Dm to Bm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Midnight in Moscow - Ly - Dm to Bm for Eb for Standard"}

%}

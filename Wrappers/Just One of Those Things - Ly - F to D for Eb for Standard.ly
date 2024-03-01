%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Just One of Those Things - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Just One of Those Things - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Just One of Those Things - Ly - F to D for Eb for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Change Partners - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Change Partners - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Change Partners - Ly - F to D for Eb for Standard"}

%}

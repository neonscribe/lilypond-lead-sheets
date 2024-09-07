%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Well You Needn't - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Well You Needn't - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Well You Needn't - Ly - F to D for Eb for Standard"}

%}

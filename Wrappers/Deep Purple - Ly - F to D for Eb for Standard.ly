%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Deep Purple - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Deep Purple - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Deep Purple - Ly - F to D for Eb for Standard"}

%}

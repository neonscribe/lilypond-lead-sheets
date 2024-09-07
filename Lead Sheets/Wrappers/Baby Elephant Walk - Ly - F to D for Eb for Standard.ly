%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
bassKey = d'
whatClef = "treble"

\include "../Core/Baby Elephant Walk - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Baby Elephant Walk - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Baby Elephant Walk - Ly - F to D for Eb for Standard"}

%}

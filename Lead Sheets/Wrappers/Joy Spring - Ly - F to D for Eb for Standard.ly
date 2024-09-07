%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Joy Spring - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Joy Spring - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Joy Spring - Ly - F to D for Eb for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Pick Yourself Up - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Pick Yourself Up - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Pick Yourself Up - Ly - F to D for Eb for Standard"}

%}

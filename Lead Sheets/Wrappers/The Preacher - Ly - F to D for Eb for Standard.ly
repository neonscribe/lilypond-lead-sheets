%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/The Preacher - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Preacher - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The Preacher - Ly - F to D for Eb for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Now's the Time - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Now's the Time - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Now's the Time - Ly - F to D for Eb for Standard"}

%}

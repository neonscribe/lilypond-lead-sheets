%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Smile - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Smile - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Smile - Ly - F to D for Eb for Standard"}

%}

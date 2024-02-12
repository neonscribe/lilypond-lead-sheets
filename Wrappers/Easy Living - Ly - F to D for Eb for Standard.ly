%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Easy Living - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Easy Living - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Easy Living - Ly - F to D for Eb for Standard"}

%}

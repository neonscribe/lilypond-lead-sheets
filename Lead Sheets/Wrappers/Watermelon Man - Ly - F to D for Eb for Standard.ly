%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Watermelon Man - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Watermelon Man - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Watermelon Man - Ly - F to D for Eb for Standard"}

%}

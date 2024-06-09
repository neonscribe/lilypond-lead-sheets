%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/The In Crowd - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The “In” Crowd - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The In Crowd - Ly - D Standard"}

%}

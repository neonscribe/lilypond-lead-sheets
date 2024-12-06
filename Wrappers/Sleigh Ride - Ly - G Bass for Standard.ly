%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Sleigh Ride - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sleigh Ride - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Sleigh Ride - Ly - G Bass for Standard"}

%}

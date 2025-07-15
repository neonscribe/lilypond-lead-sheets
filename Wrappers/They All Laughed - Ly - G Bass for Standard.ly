%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/They All Laughed - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{They All Laughed - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/They All Laughed - Ly - G Bass for Standard"}

%}

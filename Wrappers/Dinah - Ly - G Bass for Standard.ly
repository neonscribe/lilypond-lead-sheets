%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Dinah - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dinah - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Dinah - Ly - G Bass for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Ornithology - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ornithology - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Ornithology - Ly - G Bass for Standard"}

%}

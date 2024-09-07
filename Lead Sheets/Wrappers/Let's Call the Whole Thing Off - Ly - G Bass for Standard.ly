%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,,
whatClef = "bass"

\include "../Core/Let's Call the Whole Thing Off - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Call the Whole Thing Off - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Let's Call the Whole Thing Off - Ly - G Bass for Standard"}

%}

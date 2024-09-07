%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Let's Call the Whole Thing Off - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Call the Whole Thing Off - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Let's Call the Whole Thing Off - Ly - G Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Let's Call the Whole Thing Off - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Call the Whole Thing Off - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Let's Call the Whole Thing Off - Ly - G to E for Eb for Standard"}

%}

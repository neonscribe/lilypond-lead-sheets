%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Let's Call the Whole Thing Off - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Call the Whole Thing Off - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Let's Call the Whole Thing Off - Ly - G to A for Bb for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Let's Call the Whole Thing Off - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Call the Whole Thing Off - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Let's Call the Whole Thing Off - Ly - Bb Alto Voice"}

%}

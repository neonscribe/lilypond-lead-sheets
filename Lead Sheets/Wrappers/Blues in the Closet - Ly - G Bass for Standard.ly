%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Blues in the Closet - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blues in the Closet - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Blues in the Closet - Ly - G Bass for Standard"}

%}

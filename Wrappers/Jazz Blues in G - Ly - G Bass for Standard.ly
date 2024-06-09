%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Jazz Blues in G - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jazz Blues in G - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Jazz Blues in G - Ly - G Bass for Standard"}

%}

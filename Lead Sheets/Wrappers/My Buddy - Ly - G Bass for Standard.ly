%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/My Buddy - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Buddy (Waltz) - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/My Buddy - Ly - G Bass for Standard"}

%}

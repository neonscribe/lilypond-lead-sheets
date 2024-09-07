%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Nice Work if You Can Get It - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nice Work if You Can Get It - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Nice Work if You Can Get It - Ly - G Bass for Standard"}

%}

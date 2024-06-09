%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Baby Won't You Please Come Home - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Baby, Won't You Please Come Home - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Baby Won't You Please Come Home - Ly - G Bass for Standard"}

%}

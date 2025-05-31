%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/Something to Live For - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Something to Live For - D Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Something to Live For - Ly - D Bass for Standard"}

%}

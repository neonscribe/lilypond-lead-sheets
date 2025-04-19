%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/Better Than Anything - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Better Than Anything - D Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Better Than Anything - Ly - D Bass for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Taking a Chance on Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Taking a Chance on Love - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Taking a Chance on Love - Ly - C Bass for Standard"}

%}

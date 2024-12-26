%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Milestones 1958 - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Milestones (1958) - Gm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Milestones 1958 - Ly - Gm Bass for Standard"}

%}

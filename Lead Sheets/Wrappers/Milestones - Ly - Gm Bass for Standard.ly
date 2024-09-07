%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Milestones - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Milestones - Gm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Milestones - Ly - Gm Bass for Standard"}

%}

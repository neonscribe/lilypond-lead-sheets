%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = bf,
whatClef = "bass"

\include "../Core/Milestones 1947 - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Milestones (1947) - Bb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Milestones 1947 - Ly - Bb Bass for Standard"}

%}

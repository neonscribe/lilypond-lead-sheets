%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/Nobody Knows You When You're Down and Out - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nobody Knows You When You're Down and Out - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Nobody Knows You When You're Down and Out - Ly - C Bass for Standard"}

%}

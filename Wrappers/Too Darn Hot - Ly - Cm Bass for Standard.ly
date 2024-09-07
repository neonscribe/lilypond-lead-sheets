%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/Too Darn Hot - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Too Darn Hot - Cm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Too Darn Hot - Ly - Cm Bass for Standard"}

%}

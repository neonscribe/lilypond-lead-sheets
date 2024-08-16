%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,,
whatClef = "bass"

\include "../Core/Swing Gitan - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Swing Gitan - Gm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Swing Gitan - Ly - Gm Bass for Standard"}

%}

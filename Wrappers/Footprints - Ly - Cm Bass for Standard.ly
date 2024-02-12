%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Footprints - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Footprints - Cm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Footprints - Ly - Cm Bass for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Comes Love - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Comes Love - Gm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Comes Love - Ly - Gm Bass for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/True Love - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{True Love - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/True Love - Ly - G Bass for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/In the Wee Small Hours of the Morning - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In the Wee Small Hours of the Morning - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/In the Wee Small Hours of the Morning - Ly - C Bass for Standard"}

%}

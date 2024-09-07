%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = a,,
whatClef = "bass"

\include "../Core/Lucy in the Sky With Diamonds - Ly Core - A.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lucy in the Sky With Diamonds - A Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Lucy in the Sky With Diamonds - Ly - A Bass for Standard"}

%}

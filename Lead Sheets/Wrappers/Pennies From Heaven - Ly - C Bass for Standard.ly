%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/Pennies From Heaven - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Pennies From Heaven - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Pennies From Heaven - Ly - C Bass for Standard"}

%}

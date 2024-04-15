%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/Beautiful Love - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Beautiful Love - Dm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Beautiful Love - Ly - Dm Bass for Standard"}

%}

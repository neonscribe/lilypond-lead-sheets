%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,,
whatClef = "bass"

\include "../Core/Dark Eyes - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dark Eyes - Dm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Dark Eyes - Ly - Dm Bass for Standard"}

%}

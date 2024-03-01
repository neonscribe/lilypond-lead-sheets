%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/J'Attendrai - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{J'Attendrai - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/J'Attendrai - Ly - C Bass for Standard"}

%}

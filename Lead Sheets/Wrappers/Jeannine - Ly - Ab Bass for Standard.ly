%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = af,
whatClef = "bass"

\include "../Core/Jeannine - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jeannine - Ab Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Jeannine - Ly - Ab Bass for Standard"}

%}

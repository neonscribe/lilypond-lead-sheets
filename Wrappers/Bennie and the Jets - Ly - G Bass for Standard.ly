%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,,
whatClef = "bass"

\include "../Core/Bennie and the Jets - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bennie and the Jets - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Bennie and the Jets - Ly - G Bass for Standard"}

%}

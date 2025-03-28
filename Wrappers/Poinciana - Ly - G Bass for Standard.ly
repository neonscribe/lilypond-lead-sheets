%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Poinciana - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Poinciana - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Poinciana - Ly - G Bass for Standard"}

%}

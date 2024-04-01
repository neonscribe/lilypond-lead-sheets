%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Dat Dere - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dat Dere - Cm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Dat Dere - Ly - Cm Bass for Standard"}

%}

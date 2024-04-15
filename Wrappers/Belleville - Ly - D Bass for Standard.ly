%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = d,
whatClef = "bass"

\include "../Core/Belleville - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Belleville - D Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Belleville - Ly - D Bass for Standard"}

%}

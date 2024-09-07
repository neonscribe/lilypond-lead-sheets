%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/In Walked Bud - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In Walked Bud - Fm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/In Walked Bud - Ly - Fm Bass for Standard"}

%}

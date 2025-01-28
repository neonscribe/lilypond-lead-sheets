%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,,
whatClef = "bass"

\include "../Core/You and the Night and the Music - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{You and the Night and the Music - Cm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/You and the Night and the Music - Ly - Cm Bass for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Seul Ce Soir - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(Je Suis) Seul Ce Soir - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Seul Ce Soir - Ly - C Bass for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/A Ghost of a Chance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Ghost of a Chance - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/A Ghost of a Chance - Ly - C Bass for Standard"}

%}

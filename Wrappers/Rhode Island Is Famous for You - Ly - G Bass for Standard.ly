%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Rhode Island Is Famous for You - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Rhode Island Is Famous for You - G Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Rhode Island Is Famous for You - Ly - G Bass for Standard"}

%}

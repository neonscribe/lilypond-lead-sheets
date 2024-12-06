%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Do I Love You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Do I Love You - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Do I Love You - Ly - C Bass for Standard"}

%}

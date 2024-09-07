%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/I Wish I Were Twins - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Wish I Were Twins - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I Wish I Were Twins - Ly - C Bass for Standard"}

%}

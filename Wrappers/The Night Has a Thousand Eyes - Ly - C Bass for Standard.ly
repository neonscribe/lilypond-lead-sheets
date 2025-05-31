%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/The Night Has a Thousand Eyes - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Night Has a Thousand Eyes - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The Night Has a Thousand Eyes - Ly - C Bass for Standard"}

%}

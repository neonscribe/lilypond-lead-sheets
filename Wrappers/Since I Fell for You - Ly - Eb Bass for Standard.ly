%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Since I Fell for You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Since I Fell for You - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Since I Fell for You - Ly - Eb Bass for Standard"}

%}

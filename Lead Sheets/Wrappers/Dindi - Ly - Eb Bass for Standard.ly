%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Dindi - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dindi - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Dindi - Ly - Eb Bass for Standard"}

%}

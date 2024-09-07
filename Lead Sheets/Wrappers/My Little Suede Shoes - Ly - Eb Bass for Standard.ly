%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/My Little Suede Shoes - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Little Suede Shoes - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/My Little Suede Shoes - Ly - Eb Bass for Standard"}

%}

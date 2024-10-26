%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Night Life - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Night Life - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Night Life - Ly - Eb Bass for Standard"}

%}

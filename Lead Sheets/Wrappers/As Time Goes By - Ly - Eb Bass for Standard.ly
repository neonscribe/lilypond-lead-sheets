%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/As Time Goes By - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{As Time Goes By - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/As Time Goes By - Ly - Eb Bass for Standard"}

%}

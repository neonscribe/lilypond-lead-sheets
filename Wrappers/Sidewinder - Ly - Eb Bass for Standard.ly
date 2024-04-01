%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Sidewinder - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sidewinder - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Sidewinder - Ly - Eb Bass for Standard"}

%}

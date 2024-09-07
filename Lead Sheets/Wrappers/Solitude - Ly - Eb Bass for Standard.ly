%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Solitude - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Solitude - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Solitude - Ly - Eb Bass for Standard"}

%}

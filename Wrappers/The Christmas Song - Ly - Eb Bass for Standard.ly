%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/The Christmas Song - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Christmas Song - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/The Christmas Song - Ly - Eb Bass for Standard"}

%}

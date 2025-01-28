%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Without a Song - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Without a Song - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Without a Song - Ly - Eb Bass for Standard"}

%}

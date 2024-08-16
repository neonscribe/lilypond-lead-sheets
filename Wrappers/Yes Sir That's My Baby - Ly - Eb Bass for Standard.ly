%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Yes Sir That's My Baby - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Yes Sir, That's My Baby - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Yes Sir, That's My Baby - Ly - Eb Bass for Standard"}

%}

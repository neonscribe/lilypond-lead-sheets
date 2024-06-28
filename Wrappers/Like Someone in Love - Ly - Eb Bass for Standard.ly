%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Like Someone in Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Like Someone in Love - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Like Someone in Love - Ly - Eb Bass for Standard"}

%}

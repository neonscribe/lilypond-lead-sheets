%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/I Had the Craziest Dream - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Had the Craziest Dream - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I Had the Craziest Dream - Ly - C Bass for Standard"}

%}

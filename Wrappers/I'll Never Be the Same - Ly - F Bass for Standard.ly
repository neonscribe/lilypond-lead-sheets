%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/I'll Never Be the Same - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Never Be the Same - F Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/I'll Never Be the Same - Ly - F Bass for Standard"}

%}

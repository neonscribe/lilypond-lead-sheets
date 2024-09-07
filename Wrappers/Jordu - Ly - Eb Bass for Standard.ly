%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Jordu - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jordu - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Jordu - Ly - Eb Bass for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = ef,
whatClef = "bass"

\include "../Core/Sandu - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sandu - Eb Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Sandu - Ly - Eb Bass for Standard"}

%}

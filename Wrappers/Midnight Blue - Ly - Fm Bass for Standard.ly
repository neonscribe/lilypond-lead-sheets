%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
bassKey = f
whatClef = "bass"

\include "../Core/Midnight Blue - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Midnight Blue - Fm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Midnight Blue - Ly - Fm Bass for Standard"}

%}

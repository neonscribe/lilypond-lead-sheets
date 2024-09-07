%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Airegin - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Airegin - Fm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Airegin - Ly - Fm Bass for Standard"}

%}

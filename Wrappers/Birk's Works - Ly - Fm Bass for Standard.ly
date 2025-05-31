%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Birk's Works - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Birk's Works - Fm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Birk's Works - Ly - Fm Bass for Standard"}

%}

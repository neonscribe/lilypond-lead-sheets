%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = f,
whatClef = "bass"

\include "../Core/Minority - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Minority - Fm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Minority - Ly - Fm Bass for Standard"}

%}

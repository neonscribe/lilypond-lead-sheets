%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Exactly Like You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Exactly Like You - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Exactly Like You - Ly - C Bass for Standard"}

%}

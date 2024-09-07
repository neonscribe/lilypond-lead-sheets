%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = c,
whatClef = "bass"

\include "../Core/Fly Me to the Moon - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fly Me to the Moon - C Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Fly Me to the Moon - Ly - C Bass for Standard"}

%}

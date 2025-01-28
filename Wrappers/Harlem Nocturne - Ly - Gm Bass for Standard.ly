%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Harlem Nocturne - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Harlem Nocturne - Gm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Harlem Nocturne - Ly - Gm Bass for Standard"}

%}

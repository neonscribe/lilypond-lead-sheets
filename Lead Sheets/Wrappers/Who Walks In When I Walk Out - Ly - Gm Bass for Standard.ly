%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bass for Standard Key"
whatKey = g,
whatClef = "bass"

\include "../Core/Who Walks In When I Walk Out - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Who Walks In When I Walk Out? - Gm Bass}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bass/Who Walks In When I Walk Out - Ly - Gm Bass for Standard"}

%}

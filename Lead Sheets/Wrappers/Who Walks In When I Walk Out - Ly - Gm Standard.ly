%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Who Walks In When I Walk Out - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Who Walks In When I Walk Out? - Gm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Who Walks In When I Walk Out - Ly - Gm Standard"}

%}

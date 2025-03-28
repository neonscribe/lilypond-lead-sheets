%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Louis Armstrong & Ella Fitzgerald Key"
whatKey = d
whatClef = "treble_8"

\include "../Core/Who Walks In When I Walk Out - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Who Walks In When I Walk Out? - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Who Walks In When I Walk Out - Ly - Dm Standard"}

%}

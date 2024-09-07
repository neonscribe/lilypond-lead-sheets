%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alto Voice Key"
whatKey = a,
whatClef = "treble"

\include "../Core/Who Walks In When I Walk Out - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Who Walks In When I Walk Out? - Am}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Who Walks In When I Walk Out - Ly - Am Alto Voice"}

%}

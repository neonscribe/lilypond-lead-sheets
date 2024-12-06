%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = df
whatClef = "treble"

\include "../Core/Isfahan - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Isfahan - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Isfahan - Ly - Db Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = df
whatClef = "treble"

\include "../Core/Chelsea Bridge - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Chelsea Bridge - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Chelsea Bridge - Ly - Db Standard"}

%}

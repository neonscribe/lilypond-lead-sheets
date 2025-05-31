%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = df
whatClef = "treble"

\include "../Core/Stablemates - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stablemates - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Stablemates - Ly - Db Standard"}

%}

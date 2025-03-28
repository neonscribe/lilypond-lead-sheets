%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = df
whatClef = "treble"

\include "../Core/Squeeze Me - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Squeeze Me - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Squeeze Me - Ly - Db Standard"}

%}

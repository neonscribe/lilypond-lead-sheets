%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = df
whatClef = "treble"

\include "../Core/Don't Be That Way - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Be That Way - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Don't Be That Way - Ly - Db Standard"}

%}

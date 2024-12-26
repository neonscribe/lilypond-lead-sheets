%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dakota Staton Key"
whatKey = df
whatClef = "treble_8"

\include "../Core/Broadway - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Broadway - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Broadway - Ly - Db Alto Voice"}

%}

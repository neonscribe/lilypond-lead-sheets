%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Maria Muldaur Key"
whatKey = df
whatClef = "treble_8"

\include "../Core/Squeeze Me - Ly Core - Db.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Squeeze Me - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Squeeze Me - Ly - Db Alto Voice"}

%}

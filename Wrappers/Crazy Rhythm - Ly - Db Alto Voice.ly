%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Doris Day Key"
whatKey = df
whatClef = "treble_8"

\include "../Core/Crazy Rhythm - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Crazy Rhythm - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Crazy Rhythm - Ly - Db Alto Voice"}

%}

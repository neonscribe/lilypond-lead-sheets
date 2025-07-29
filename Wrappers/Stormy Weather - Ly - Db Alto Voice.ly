%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Lena Horne Key"
whatKey = df
whatClef = "treble_8"

\include "../Core/Stormy Weather - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stormy Weather - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Stormy Weather - Ly - Db Alto Voice"}

%}

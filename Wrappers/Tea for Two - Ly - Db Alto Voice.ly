%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alto Voice Key"
whatKey = df
whatClef = "treble_8"

\include "../Core/Tea for Two - Ly Core - Ab.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tea for Two - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Tea for Two - Ly - Db Alto Voice"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Frank Sinatra Key"
whatKey = df
whatClef = "treble"

\include "../Core/Can't We Be Friends - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Can't We Be Friends - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Can't We Be Friends - Ly - Db Baritone Voice"}

%}

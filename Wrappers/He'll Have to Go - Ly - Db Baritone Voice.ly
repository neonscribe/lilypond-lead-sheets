%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Jim Reeves, Dave Dudley Key"
whatKey = df
whatClef = "treble"

\include "../Core/He'll Have to Go - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{He'll Have to Go - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/He'll Have to Go - Ly - Db Baritone Voice"}

%}

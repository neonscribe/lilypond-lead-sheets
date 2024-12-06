%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Mel Tormé, Nat King Cole, Johnny Mathis Key"
whatKey = df
whatClef = "treble"

\include "../Core/The Christmas Song - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Christmas Song - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/The Christmas Song - Ly - Db Baritone Voice"}

%}

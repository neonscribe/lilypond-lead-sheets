%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Louis Armstrong Key"
whatKey = df
whatClef = "treble"

\include "../Core/I'm in the Mood for Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'm in the Mood for Love - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/I'm in the Mood for Love - Ly - Db Baritone Voice"}

%}

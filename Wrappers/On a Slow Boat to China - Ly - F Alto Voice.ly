%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Rosemary Clooney Key"
whatKey = f
whatClef = "treble_8"

\include "../Core/On a Slow Boat to China - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{On a Slow Boat to China - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/On a Slow Boat to China - Ly - F Alto Voice"}

%}

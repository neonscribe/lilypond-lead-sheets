%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dinah Shore Key"
whatKey = bf,,
whatClef = "treble_8"

\include "../Core/Love Walked In - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Love Walked In - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Love Walked In - Ly - Bb Alto Voice"}

%}

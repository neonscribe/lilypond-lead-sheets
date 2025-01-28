%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Judy Garland Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Liza (All the Clouds'll Roll Away) - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Liza (All the Clouds'll Roll Away) - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Liza (All the Clouds'll Roll Away) - Ly - F Alto Voice"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Crystal Gayle Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Ole Buttermilk Sky - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ole Buttermilk Sky - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Ole Buttermilk Sky - Ly - Bb Alto Voice"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Beverly Kenney Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Ole Buttermilk Sky - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Ole Buttermilk Sky - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Ole Buttermilk Sky - Ly - C Alto Voice"}

%}

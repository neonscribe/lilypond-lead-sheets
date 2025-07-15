%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Patti Page Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Memories of You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Memories of You - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Memories of You - Ly - G Alto Voice"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Jeri Southern, Ella Fitzgerald 1958 Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/My Old Flame - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Old Flame - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/My Old Flame - Ly - C Alto Voice"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Don't Fence Me In - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Fence Me In - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Don't Fence Me In - Ly - C Alto Voice"}

%}

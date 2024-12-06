%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = c
whatClef = "treble"

\include "../Core/This Time the Dream's on Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{This Time the Dream's on Me - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/This Time the Dream's on Me - Ly - C Alto Voice"}

%}

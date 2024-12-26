%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Nancy Wilson, June Christy, Alison Krause Key"
whatKey = df
whatClef = "treble_8"

\include "../Core/This Time the Dream's on Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{This Time the Dream's on Me - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/This Time the Dream's on Me - Ly - Db Alto Voice"}

%}

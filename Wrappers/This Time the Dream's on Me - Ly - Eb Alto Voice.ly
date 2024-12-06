%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bonnie Lake (with Artie Shaw) Key"
whatKey = ef
whatClef = "treble"

\include "../Core/This Time the Dream's on Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{This Time the Dream's on Me - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/This Time the Dream's on Me - Ly - Eb Alto Voice"}

%}

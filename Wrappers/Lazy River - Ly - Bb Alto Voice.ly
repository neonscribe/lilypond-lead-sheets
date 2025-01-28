%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Helen Forrest (with Benny Goodman) Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Lazy River - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(Up a) Lazy River - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Lazy River - Ly - Bb Alto Voice"}

%}

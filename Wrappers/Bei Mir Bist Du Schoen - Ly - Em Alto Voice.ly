%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Andrews Sisters Key"
whatKey = e
whatClef = "treble_8"

\include "../Core/Bei Mir Bist Du Schoen - Ly Core - Am.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bei Mir Bist Du Schoen - Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Bei Mir Bist Du Schoen - Ly - Em Alto Voice"}

%}

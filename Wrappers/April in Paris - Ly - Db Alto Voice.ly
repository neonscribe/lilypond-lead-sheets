%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Julie London Key"
whatKey = df,
whatClef = "treble_8"

\include "../Core/April in Paris - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{April in Paris - Db}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/April in Paris - Ly - Db Alto Voice"}

%}

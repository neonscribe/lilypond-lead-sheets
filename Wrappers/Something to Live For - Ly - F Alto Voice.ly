%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Carmen McRae, Ella Fitzgerald Key"
whatKey = f,
whatClef = "treble_8"

\include "../Core/Something to Live For - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Something to Live For - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Something to Live For - Ly - F Alto Voice"}

%}

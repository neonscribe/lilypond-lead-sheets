%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Patsy Cline Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Any Time - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Any Time - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Any Time - Ly - Bb Alto Voice"}

%}

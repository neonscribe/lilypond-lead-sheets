%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Always Waltz - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Always (3/4) - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Always Waltz - Ly - Bb Alto Voice"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = g,
whatClef = "treble"

\include "../Core/The Lady Is a Tramp - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Lady Is a Tramp - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The Lady Is a Tramp - Ly - G Alto Voice"}

%}

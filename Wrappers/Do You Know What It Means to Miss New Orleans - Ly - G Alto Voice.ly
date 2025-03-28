%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Marilyn Maxwell Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Do You Know What It Means to Miss New Orleans - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Do You Know What It Means to Miss New Orleans - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Do You Know What It Means to Miss New Orleans - Ly - G Alto Voice"}

%}

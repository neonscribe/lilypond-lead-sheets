%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eydie Gormé Key"
whatKey = f,
whatClef = "treble"

\include "../Core/Bye Bye Blues - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bye Bye Blues - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Bye Bye Blues - Ly - F Alto Voice"}

%}

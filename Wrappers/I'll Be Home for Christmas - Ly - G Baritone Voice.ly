%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bing Crosby, Keely Smith Key"
whatKey = g,
whatClef = "treble"

\include "../Core/I'll Be Home for Christmas - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Be Home for Christmas - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/I'll Be Home for Christmas - Ly - G Baritone Voice"}

%}

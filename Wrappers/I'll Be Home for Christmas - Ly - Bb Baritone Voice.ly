%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Elvis Presley Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/I'll Be Home for Christmas - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Be Home for Christmas - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/I'll Be Home for Christmas - Ly - Bb Baritone Voice"}

%}

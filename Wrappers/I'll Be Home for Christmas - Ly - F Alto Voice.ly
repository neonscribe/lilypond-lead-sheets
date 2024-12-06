%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Joni James Key"
whatKey = f
whatClef = "treble"

\include "../Core/I'll Be Home for Christmas - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I'll Be Home for Christmas - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I'll Be Home for Christmas - Ly - F Alto Voice"}

%}

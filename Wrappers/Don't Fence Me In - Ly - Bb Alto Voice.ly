%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Holly Cole Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Don't Fence Me In - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Don't Fence Me In - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Don't Fence Me In - Ly - Bb Alto Voice"}

%}

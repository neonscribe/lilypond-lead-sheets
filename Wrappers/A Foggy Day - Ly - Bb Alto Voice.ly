%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Carmen McRae Key"
whatKey = bf,
whatClef = "treble"

\include "../Core/A Foggy Day - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Foggy Day (In London Town) - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/A Foggy Day - Ly - Bb Alto Voice"}

%}

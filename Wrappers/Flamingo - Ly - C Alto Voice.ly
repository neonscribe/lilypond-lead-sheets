%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Caterina Valente Key"
whatKey = c
whatClef = "treble"

\include "../Core/Flamingo - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Flamingo - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Flamingo - Ly - C Alto Voice"}

%}

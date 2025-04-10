%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Cleo Laine Key"
whatKey = d
whatClef = "treble_8"

\include "../Core/Jeepers Creepers - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jeepers Creepers - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Jeepers Creepers - Ly - D Alto Voice"}

%}

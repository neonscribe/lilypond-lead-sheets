%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ethel Waters Key"
whatKey = f
whatClef = "treble_8"

\include "../Core/Jeepers Creepers - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jeepers Creepers - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Jeepers Creepers - Ly - F Alto Voice"}

%}

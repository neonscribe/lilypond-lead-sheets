%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ella Fitzgerald Key"
whatKey = c
whatClef = "treble"

\include "../Core/Crazy Rhythm - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Crazy Rhythm - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Crazy Rhythm - Ly - C Alto Voice"}

%}

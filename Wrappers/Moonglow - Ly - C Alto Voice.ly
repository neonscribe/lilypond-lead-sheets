%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Moonglow - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moonglow - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Moonglow - Ly - C Alto Voice"}

%}

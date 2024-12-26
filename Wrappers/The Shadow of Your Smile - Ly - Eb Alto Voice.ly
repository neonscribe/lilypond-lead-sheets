%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Astrud Gilberto Key"
whatKey = ef
whatClef = "treble_8"

\include "../Core/The Shadow of Your Smile - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Shadow of Your Smile - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/The Shadow of Your Smile - Ly - Eb Alto Voice"}

%}

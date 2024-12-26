%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Billie Holiday Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/As Time Goes By - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{As Time Goes By - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/As Time Goes By - Ly - G Alto Voice"}

%}

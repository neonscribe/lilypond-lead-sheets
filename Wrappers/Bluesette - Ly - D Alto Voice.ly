%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sue Raney, Blossom Dearie Key"
whatKey = d
whatClef = "treble_8"

\include "../Core/Bluesette - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bluesette - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Bluesette - Ly - D Alto Voice"}

%}

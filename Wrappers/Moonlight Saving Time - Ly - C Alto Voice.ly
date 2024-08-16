%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Blossom Dearie Key"
whatKey = c
whatClef = "treble"

\include "../Core/Moonlight Saving Time - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moonlight Saving Time - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Moonlight Saving Time - Ly - C Alto Voice"}

%}

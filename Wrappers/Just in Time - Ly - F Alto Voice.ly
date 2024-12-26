%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Sarah Vaughan, Peggy Lee, Blossom Dearie, Anita O'Day Key"
whatKey = f
whatClef = "treble_8"

\include "../Core/Just in Time - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Just in Time - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Just in Time - Ly - F Alto Voice"}

%}

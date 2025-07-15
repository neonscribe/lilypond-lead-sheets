%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Peggy Lee, Anita O'Day, Carmen McRae Key"
whatKey = g,
whatClef = "treble_8"

\include "../Core/Them There Eyes - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Them There Eyes - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Them There Eyes - Ly - G Alto Voice"}

%}

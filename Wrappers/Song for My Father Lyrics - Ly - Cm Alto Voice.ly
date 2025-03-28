%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Denise King Key"
whatKey = c
whatClef = "treble_8"

\include "../Core/Song for My Father Lyrics - Ly Core - Fm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Song for My Father (with lyrics) - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Song for My Father Lyrics - Ly - Cm Alto Voice"}

%}

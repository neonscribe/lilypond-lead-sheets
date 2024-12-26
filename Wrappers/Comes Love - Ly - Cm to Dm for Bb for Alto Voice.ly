%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Billie Holiday Key"
whatKey = d
whatClef = "treble_8"

\include "../Core/Comes Love - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Comes Love - Cm to Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Bb/Comes Love - Ly - Cm to Dm for Bb for Alto Voice"}

%}

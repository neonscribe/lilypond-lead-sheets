%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Madeleine Peyroux Key"
whatKey = ef
whatClef = "treble_8"

\include "../Core/I Can't Stop Loving You - Ly Core - B.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Can't Stop Loving You - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/I Can't Stop Loving You - Ly - Eb Alto Voice"}

%}

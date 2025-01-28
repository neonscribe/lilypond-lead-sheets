%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dinah Washington Key"
whatKey = af,
whatClef = "treble_8"

\include "../Core/Without a Song - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Without a Song - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Without a Song - Ly - Ab Alto Voice"}

%}

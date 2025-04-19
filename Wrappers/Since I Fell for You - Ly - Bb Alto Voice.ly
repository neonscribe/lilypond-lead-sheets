%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dinah Washington Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/Since I Fell for You - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Since I Fell for You - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Since I Fell for You - Ly - Bb Alto Voice"}

%}

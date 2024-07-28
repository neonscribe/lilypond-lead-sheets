%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ray Charles Key"
whatKey = f'
whatClef = "treble"

\include "../Core/I Can't Stop Loving You - Ly Core - B.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Can't Stop Loving You - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/I Can't Stop Loving You - Ly - F Baritone Voice"}

%}

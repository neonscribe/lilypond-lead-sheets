%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Don Gibson Key"
whatKey = b
whatClef = "treble"

\include "../Core/I Can't Stop Loving You - Ly Core - B.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{I Can't Stop Loving You - B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/I Can't Stop Loving You - Ly - B Baritone Voice"}

%}

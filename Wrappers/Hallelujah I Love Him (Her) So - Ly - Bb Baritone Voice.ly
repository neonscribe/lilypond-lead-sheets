%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Ray Charles Key"
whatKey = bf
whatClef = "treble"

\include "../Core/Hallelujah I Love Him (Her) So - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Hallelujah I Love Her So - Bb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Hallelujah I Love Him (Her) So - Ly - Bb Baritone Voice"}

%}

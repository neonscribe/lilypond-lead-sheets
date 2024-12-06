%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Judy Garland Key"
whatKey = gf
whatClef = "treble"

\include "../Core/Have Yourself a Merry Little Christmas - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Have Yourself a Merry Little Christmas - Gb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Have Yourself a Merry Little Christmas - Ly - Gb Alto Voice"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Willie Nelson Key"
whatKey = c
whatClef = "treble"

\include "../Core/Night Life - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Night Life - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Night Life - Ly - C Baritone Voice"}

%}

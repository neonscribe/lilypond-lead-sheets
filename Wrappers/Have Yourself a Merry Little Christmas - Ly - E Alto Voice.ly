%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Diana Krall Key"
whatKey = e'
whatClef = "treble"

\include "../Core/Have Yourself a Merry Little Christmas - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Have Yourself a Merry Little Christmas - E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Alto Voice/Have Yourself a Merry Little Christmas - Ly - E Alto Voice"}

%}

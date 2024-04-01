%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "for Concert Key instruments"
whatKey = c
whatClef = "treble"

\include "../Core/Jazz Blues Flat Keys - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Jazz Blues Flat Keys}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Jazz Blues Flat Keys - Ly - C Standard"}

%}

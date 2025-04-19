%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Lover Waltz - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lover (3/4) - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Lover Waltz - Ly - C Standard"}

%}

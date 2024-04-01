%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/A Ghost of a Chance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Ghost of a Chance - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/A Ghost of a Chance - Ly - C Standard"}

%}

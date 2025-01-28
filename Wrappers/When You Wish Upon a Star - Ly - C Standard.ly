%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/When You Wish Upon a Star - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When You Wish Upon a Star - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/When You Wish Upon a Star - Ly - C Standard"}

%}

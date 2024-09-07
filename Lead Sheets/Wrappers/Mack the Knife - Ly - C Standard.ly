%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Mack the Knife - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mack the Knife - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Mack the Knife - Ly - C Standard"}

%}

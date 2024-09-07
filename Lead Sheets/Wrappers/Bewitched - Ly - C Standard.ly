%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Bewitched - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bewitched - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bewitched - Ly - C Standard"}

%}

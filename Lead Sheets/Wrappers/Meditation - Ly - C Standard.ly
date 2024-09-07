%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Meditation - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Meditation (Meditação) - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Meditation - Ly - C Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Lover Swing - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lover (4/4) - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Lover Swing - Ly - C Standard"}

%}

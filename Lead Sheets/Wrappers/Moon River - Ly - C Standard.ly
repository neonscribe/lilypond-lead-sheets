%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Moon River - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Moon River - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Moon River - Ly - C Standard"}

%}

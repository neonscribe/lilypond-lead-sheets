%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/We'll Be Together Again - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{We'll Be Together Again - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/We'll Be Together Again - Ly - C Standard"}

%}

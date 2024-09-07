%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Let's Face the Music and Dance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Let's Face the Music and Dance - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Let's Face the Music and Dance - Ly - C Standard"}

%}

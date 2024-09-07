%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Fly Me to the Moon - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Fly Me to the Moon - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Fly Me to the Moon - Ly - C Standard"}

%}

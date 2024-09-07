%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/J'Attendrai - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{J'Attendrai - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/J'Attendrai - Ly - C Standard"}

%}

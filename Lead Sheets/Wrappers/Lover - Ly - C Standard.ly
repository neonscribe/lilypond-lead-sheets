%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Lover - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lover - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Lover - Ly - C Standard"}

%}

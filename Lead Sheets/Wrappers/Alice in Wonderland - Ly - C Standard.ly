%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Alice in Wonderland - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Alice in Wonderland - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Alice in Wonderland - Ly - C Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Stairway to the Stars - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stairway to the Stars - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Stairway to the Stars - Ly - C Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/In the Wee Small Hours of the Morning - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{In the Wee Small Hours of the Morning - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/In the Wee Small Hours of the Morning - Ly - C Standard"}

%}

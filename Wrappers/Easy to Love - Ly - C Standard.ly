%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Easy to Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(You'd Be So) Easy to Love - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Easy to Love - Ly - C Standard"}

%}

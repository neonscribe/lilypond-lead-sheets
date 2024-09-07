%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/St Thomas - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{St. Thomas - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/St Thomas - Ly - C Standard"}

%}

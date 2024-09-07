%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Robbin's Nest - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Robbin's Nest - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Robbin's Nest - Ly - C Standard"}

%}

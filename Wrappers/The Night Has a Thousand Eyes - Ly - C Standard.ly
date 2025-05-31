%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/The Night Has a Thousand Eyes - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Night Has a Thousand Eyes - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Night Has a Thousand Eyes - Ly - C Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/The Touch of Your Lips - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Touch of Your Lips - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Touch of Your Lips - Ly - C Standard"}

%}

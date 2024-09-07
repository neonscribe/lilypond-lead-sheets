%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/The World Is Waiting for the Sunrise Les Paul - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The World Is Waiting for the Sunrise Les Paul - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The World Is Waiting for the Sunrise Les Paul - Ly - C Standard"}

%}

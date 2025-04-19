%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/The Best Things in Life Are Free - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Best Things in Life Are Free - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Best Things in Life Are Free - Ly - C Standard"}

%}

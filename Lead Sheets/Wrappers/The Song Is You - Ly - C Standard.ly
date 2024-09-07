%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/The Song Is You - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Song Is You - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Song Is You - Ly - C Standard"}

%}

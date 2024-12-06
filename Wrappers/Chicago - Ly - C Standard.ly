%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Chicago - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Chicago - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Chicago - Ly - C Standard"}

%}

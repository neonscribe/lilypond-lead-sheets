%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Cool Blues - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cool Blues - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Cool Blues - Ly - C Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/The Lady Is a Tramp - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Lady Is a Tramp - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The Lady Is a Tramp - Ly - C Standard"}

%}

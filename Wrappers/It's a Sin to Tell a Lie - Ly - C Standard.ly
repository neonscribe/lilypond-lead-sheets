%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/It's a Sin to Tell a Lie - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{It's a Sin to Tell a Lie - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/It's a Sin to Tell a Lie - Ly - C Standard"}

%}

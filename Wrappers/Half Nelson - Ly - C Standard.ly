%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Half Nelson - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Half Nelson - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Half Nelson - Ly - C Standard"}

%}

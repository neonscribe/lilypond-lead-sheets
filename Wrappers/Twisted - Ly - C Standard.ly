%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Twisted - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Twisted - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Twisted - Ly - C Standard"}

%}

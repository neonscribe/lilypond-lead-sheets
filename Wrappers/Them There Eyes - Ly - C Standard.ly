%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Them There Eyes - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Them There Eyes - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Them There Eyes - Ly - C Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Lady Bird - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Lady Bird - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Lady Bird - Ly - C Standard"}

%}

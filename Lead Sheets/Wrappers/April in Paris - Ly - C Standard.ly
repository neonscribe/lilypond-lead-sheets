%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/April in Paris - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{April in Paris - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/April in Paris - Ly - C Standard"}

%}

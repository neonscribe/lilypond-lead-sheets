%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/September Song - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{September Song - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/September Song - Ly - C Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Django Key"
whatKey = g'
whatClef = "treble"

\include "../Core/September Song - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{September Song - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/September Song - Ly - G Standard"}

%}

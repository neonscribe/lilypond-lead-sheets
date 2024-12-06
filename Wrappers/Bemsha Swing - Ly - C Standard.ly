%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Bemsha Swing - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bemsha Swing - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bemsha Swing - Ly - C Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Taking a Chance on Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Taking a Chance on Love - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Taking a Chance on Love - Ly - C Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Pennies From Heaven - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Pennies From Heaven - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Pennies From Heaven - Ly - C Standard"}

%}

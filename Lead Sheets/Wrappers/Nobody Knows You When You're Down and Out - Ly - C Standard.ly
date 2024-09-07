%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Nobody Knows You When You're Down and Out - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nobody Knows You When You're Down and Out - C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Nobody Knows You When You're Down and Out - Ly - C Standard"}

%}

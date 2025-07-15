%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Dinah Shore Key"
whatKey = bf,
whatClef = "treble_8"

\include "../Core/My Buddy - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Buddy (Waltz) - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/My Buddy - Ly - G Standard"}

%}

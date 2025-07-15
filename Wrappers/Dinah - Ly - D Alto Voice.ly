%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Connie Boswell Key"
whatKey = d
whatClef = "treble_8"

\include "../Core/Dinah - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dinah - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Dinah - Ly - G Standard"}

%}

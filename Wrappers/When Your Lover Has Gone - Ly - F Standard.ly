%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alternate Key"
whatKey = f
whatClef = "treble"

\include "../Core/When Your Lover Has Gone - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When Your Lover Has Gone - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/When Your Lover Has Gone - Ly - F Standard"}

%}

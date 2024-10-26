%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Alternate Key"
whatKey = af
whatClef = "treble"

\include "../Core/When Your Lover Has Gone - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When Your Lover Has Gone - Ab}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/When Your Lover Has Gone - Ly - Ab Standard"}

%}

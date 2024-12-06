%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Elvis Presley, Brian Setzer Key"
whatKey = e
whatClef = "treble"

\include "../Core/Blue Christmas - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Blue Christmas - E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Blue Christmas - Ly - E Baritone Voice"}

%}

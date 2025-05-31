%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bob Dorough Key"
whatKey = e
whatClef = "treble"

\include "../Core/Devil May Care - Ly Core - Gm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Devil May Care - Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Baritone Voice/Devil May Care - Ly - Em Baritone Voice"}

%}

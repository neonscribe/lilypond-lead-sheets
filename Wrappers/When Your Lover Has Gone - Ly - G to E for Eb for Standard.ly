%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/When Your Lover Has Gone - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When Your Lover Has Gone - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/When Your Lover Has Gone - Ly - G to E for Eb for Standard"}

%}

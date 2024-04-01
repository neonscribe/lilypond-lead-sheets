%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = e'
whatClef = "treble"

\include "../Core/Nice Work if You Can Get It - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nice Work if You Can Get It - G to E}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Nice Work if You Can Get It - Ly - G to E for Eb for Standard"}

%}

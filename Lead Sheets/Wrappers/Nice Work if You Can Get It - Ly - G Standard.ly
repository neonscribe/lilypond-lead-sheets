%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Nice Work if You Can Get It - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nice Work if You Can Get It - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Nice Work if You Can Get It - Ly - G Standard"}

%}

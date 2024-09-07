%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/Nice Work if You Can Get It - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nice Work if You Can Get It - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Nice Work if You Can Get It - Ly - G to A for Bb for Standard"}

%}

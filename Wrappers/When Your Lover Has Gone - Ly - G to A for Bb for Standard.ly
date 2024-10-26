%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = a
whatClef = "treble"

\include "../Core/When Your Lover Has Gone - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When Your Lover Has Gone - G to A}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/When Your Lover Has Gone - Ly - G to A for Bb for Standard"}

%}

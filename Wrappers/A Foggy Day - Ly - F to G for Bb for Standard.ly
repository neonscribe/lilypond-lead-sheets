%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/A Foggy Day - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Foggy Day (In London Town) - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/A Foggy Day - Ly - F to G for Bb for Standard"}

%}

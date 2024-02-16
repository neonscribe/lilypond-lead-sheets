%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Baby Elephant Walk - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Baby Elephant Walk - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Baby Elephant Walk - Ly - F to G for Bb for Standard"}

%}

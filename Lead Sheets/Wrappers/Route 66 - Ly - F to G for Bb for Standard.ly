%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Route 66 - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Route 66 - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Route 66 - Ly - F to G for Bb for Standard"}

%}

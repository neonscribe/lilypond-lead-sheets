%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Black Coffee - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Black Coffee - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Black Coffee - Ly - F to G for Bb for Standard"}

%}

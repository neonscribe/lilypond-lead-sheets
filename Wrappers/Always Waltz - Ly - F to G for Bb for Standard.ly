%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Always Waltz - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Always (3/4) - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Always Waltz - Ly - F to G for Bb for Standard"}

%}

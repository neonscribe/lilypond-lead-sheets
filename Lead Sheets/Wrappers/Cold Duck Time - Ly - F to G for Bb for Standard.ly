%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
bassKey = g
whatClef = "treble"

\include "../Core/Cold Duck Time - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Cold Duck Time - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Cold Duck Time - Ly - F to G for Bb for Standard"}

%}

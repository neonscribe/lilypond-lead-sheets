%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/Makin' Whoopee! - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Makin' Whoopee! - F to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Makin' Whoopee! - Ly - F to G for Bb for Standard"}

%}

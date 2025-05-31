%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = d'
whatClef = "treble"

\include "../Core/Makin' Whoopee! - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Makin' Whoopee! - F to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Makin' Whoopee! - Ly - F to D for Eb for Standard"}

%}

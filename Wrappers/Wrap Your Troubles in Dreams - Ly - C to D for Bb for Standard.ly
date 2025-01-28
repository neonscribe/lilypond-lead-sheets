%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Wrap Your Troubles in Dreams - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Wrap Your Troubles in Dreams - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Wrap Your Troubles in Dreams - Ly - C to D for Bb for Standard"}

%}

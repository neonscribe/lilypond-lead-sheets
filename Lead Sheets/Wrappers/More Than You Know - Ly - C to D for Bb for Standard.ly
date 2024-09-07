%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/More Than You Know - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{More Than You Know - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/More Than You Know - Ly - C to D for Bb for Standard"}

%}

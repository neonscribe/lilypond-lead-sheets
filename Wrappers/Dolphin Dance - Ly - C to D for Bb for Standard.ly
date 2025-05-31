%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Dolphin Dance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dolphin Dance - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Dolphin Dance - Ly - C to D for Bb for Standard"}

%}

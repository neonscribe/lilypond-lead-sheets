%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Sometime Ago - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sometime Ago - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Sometime Ago - Ly - C to D for Bb for Standard"}

%}

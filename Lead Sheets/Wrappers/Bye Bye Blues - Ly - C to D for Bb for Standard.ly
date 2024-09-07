%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Bye Bye Blues - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bye Bye Blues - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Bye Bye Blues - Ly - C to D for Bb for Standard"}

%}

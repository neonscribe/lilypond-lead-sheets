%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/A Fine Romance - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{A Fine Romance - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/A Fine Romance - Ly - C to D for Bb for Standard"}

%}

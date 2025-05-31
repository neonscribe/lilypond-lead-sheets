%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Countdown - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Countdown - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Countdown - Ly - C to D for Bb for Standard"}

%}

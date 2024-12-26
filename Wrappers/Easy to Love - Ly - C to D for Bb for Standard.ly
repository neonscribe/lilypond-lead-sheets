%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Easy to Love - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{(You'd Be So) Easy to Love - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/Easy to Love - Ly - C to D for Bb for Standard"}

%}

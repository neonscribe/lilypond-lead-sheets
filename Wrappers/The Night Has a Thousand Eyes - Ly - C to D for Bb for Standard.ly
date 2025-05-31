%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/The Night Has a Thousand Eyes - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The Night Has a Thousand Eyes - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/The Night Has a Thousand Eyes - Ly - C to D for Bb for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/The World Is Waiting for the Sunrise Les Paul - Ly Core - C.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The World Is Waiting for the Sunrise Les Paul - C to D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/The World Is Waiting for the Sunrise Les Paul - Ly - C to D for Bb for Standard"}

%}

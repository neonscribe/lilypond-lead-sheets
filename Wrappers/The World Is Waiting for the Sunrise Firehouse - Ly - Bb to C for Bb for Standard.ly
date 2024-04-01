%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Bb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/The World Is Waiting for the Sunrise Firehouse - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The World Is Waiting for the Sunrise Firehouse - Bb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bb/The World Is Waiting for the Sunrise Firehouse - Ly - Bb to C for Bb for Standard"}

%}

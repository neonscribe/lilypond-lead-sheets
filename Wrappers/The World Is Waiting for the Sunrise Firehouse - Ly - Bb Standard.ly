%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = bf
whatClef = "treble"

\include "../Core/The World Is Waiting for the Sunrise Firehouse - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The World Is Waiting for the Sunrise Firehouse - B♭}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/The World Is Waiting for the Sunrise Firehouse - Ly - Bb Standard"}

%}

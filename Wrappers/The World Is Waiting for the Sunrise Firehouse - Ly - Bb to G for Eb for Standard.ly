%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g'
whatClef = "treble"

\include "../Core/The World Is Waiting for the Sunrise Firehouse - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{The World Is Waiting for the Sunrise Firehouse - B♭ to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/The World Is Waiting for the Sunrise Firehouse - Ly - Bb to G for Eb for Standard"}

%}

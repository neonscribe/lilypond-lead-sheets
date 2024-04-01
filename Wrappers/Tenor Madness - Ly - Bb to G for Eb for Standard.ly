%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g'
whatClef = "treble"

\include "../Core/Tenor Madness - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tenor Madness - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Tenor Madness - Ly - Bb to G for Eb for Standard"}

%}

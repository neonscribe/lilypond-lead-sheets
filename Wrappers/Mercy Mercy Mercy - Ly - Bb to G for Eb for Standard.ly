%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = g'
whatClef = "treble"

\include "../Core/Mercy Mercy Mercy - Ly Core - Bb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Mercy, Mercy, Mercy - Bb to G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Mercy Mercy Mercy - Ly - Bb to G for Eb for Standard"}

%}

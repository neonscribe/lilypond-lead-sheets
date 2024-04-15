%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
bassKey = c
whatClef = "treble"

\include "../Core/Sidewinder - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Sidewinder - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Sidewinder - Ly - Eb to C for Eb for Standard"}

%}

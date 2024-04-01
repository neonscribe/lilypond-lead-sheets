%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Solitude - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Solitude - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Solitude - Ly - Eb to C for Eb for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Bessie's Blues - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bessie's Blues - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Bessie's Blues - Ly - Eb to C for Eb for Standard"}

%}

%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/My Shining Hour - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Shining Hour - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/My Shining Hour - Ly - Eb to C for Eb for Standard"}

%}

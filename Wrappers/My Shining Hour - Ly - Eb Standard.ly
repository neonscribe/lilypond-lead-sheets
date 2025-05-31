%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/My Shining Hour - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{My Shining Hour - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/My Shining Hour - Ly - Eb Standard"}

%}

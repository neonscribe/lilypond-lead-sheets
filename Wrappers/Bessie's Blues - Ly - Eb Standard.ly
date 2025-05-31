%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Bessie's Blues - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Bessie's Blues - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Bessie's Blues - Ly - Eb Standard"}

%}

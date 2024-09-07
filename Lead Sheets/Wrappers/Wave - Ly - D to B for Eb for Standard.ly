%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b,
whatClef = "treble"

\include "../Core/Wave - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Wave - D to B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Wave - Ly - D to B for Eb for Standard"}

%}

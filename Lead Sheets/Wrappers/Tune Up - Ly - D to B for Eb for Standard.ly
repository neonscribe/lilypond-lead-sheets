%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b,
whatClef = "treble"

\include "../Core/Tune Up - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tune Up - D to B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Tune Up - Ly - D to B for Eb for Standard"}

%}

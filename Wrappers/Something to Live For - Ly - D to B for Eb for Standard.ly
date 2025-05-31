%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = b,
whatClef = "treble"

\include "../Core/Something to Live For - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Something to Live For - D to B}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Something to Live For - Ly - D to B for Eb for Standard"}

%}

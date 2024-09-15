%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Eb for Standard Key"
whatKey = c'
whatClef = "treble"

\include "../Core/Groovin' High - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Groovin' High - Eb to C}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Eb/Groovin' High - Ly - Eb to C for Eb for Standard"}

%}

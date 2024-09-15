%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = ef
whatClef = "treble"

\include "../Core/Groovin' High - Ly Core - Eb.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Groovin' High - Eb}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Groovin' High - Ly - Eb Standard"}

%}

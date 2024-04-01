%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Tune Up - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Tune Up - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Tune Up - Ly - D Standard"}

%}

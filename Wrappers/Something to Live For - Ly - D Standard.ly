%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Something to Live For - Ly Core - D.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Something to Live For - D}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Something to Live For - Ly - D Standard"}

%}

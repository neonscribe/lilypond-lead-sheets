%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Topsy - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Topsy - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Topsy - Ly - Dm Standard"}

%}

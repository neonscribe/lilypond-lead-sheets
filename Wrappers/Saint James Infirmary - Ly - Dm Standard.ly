%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Saint James Infirmary - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Saint James Infirmary - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Saint James Infirmary - Ly - Dm Standard"}

%}

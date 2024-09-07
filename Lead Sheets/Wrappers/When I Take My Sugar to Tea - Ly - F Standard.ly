%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = f
whatClef = "treble"

\include "../Core/When I Take My Sugar to Tea - Ly Core - F.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{When I Take My Sugar to Tea - F}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/When I Take My Sugar to Tea - Ly - F Standard"}

%}

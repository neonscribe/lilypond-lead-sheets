%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Help the Poor - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Help the Poor - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Help the Poor - Ly - Dm Standard"}

%}

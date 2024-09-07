%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Dark Eyes - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Dark Eyes - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Dark Eyes - Ly - Dm Standard"}

%}

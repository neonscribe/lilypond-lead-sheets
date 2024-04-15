%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Beautiful Love - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Beautiful Love - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Beautiful Love - Ly - Dm Standard"}

%}

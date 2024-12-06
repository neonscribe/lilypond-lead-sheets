%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = d
whatClef = "treble"

\include "../Core/Midnight in Moscow - Ly Core - Dm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Midnight in Moscow - Dm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Midnight in Moscow - Ly - Dm Standard"}

%}

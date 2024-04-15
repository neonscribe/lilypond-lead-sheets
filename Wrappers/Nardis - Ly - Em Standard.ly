%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = e
whatClef = "treble"

\include "../Core/Nardis - Ly Core - Em.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Nardis - Em}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Nardis - Ly - Em Standard"}

%}

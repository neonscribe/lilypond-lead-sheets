%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = c
whatClef = "treble"

\include "../Core/Stolen Moments - Ly Core - Cm.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{Stolen Moments - Cm}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/Stolen Moments - Ly - Cm Standard"}

%}

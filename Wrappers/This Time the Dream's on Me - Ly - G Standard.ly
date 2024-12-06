%% -*- Mode: LilyPond -*-

\version "2.24.0"

\include "english.ly"

instrument = "Standard Key"
whatKey = g
whatClef = "treble"

\include "../Core/This Time the Dream's on Me - Ly Core - G.ly"

%{

\phantomsection
\addcontentsline{toc}{section}{This Time the Dream's on Me - G}
\includepdf[pages=-, pagecommand={\thispagestyle{plain}}]{"../Standard/This Time the Dream's on Me - Ly - G Standard"}

%}
